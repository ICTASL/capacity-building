#!/bin/bash

# Content validation script for Jekyll site
# This script validates content quality and structure

set -e

echo "📝 Starting content validation for Jekyll site..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

print_status() {
    local color=$1
    local message=$2
    echo -e "${color}${message}${NC}"
}

# Build the site first if _site doesn't exist
if [ ! -d "_site" ]; then
    print_status $YELLOW "🏗️  Building Jekyll site first..."
    bundle exec jekyll build --quiet
fi

print_status $YELLOW "🔍 Validating content structure..."

total_pages=0
pages_with_titles=0
pages_with_meta=0
markdown_files=0
valid_frontmatter=0

# Check markdown files in source
print_status $YELLOW "📄 Checking markdown files for front matter..."
while IFS= read -r file; do
    if [[ -f "$file" && ( "$file" =~ \.md$ || "$file" =~ \.markdown$ ) ]]; then
        ((markdown_files++))
        
        # Check if file has front matter
        if head -n 1 "$file" 2>/dev/null | grep -q "^---$"; then
            ((valid_frontmatter++))
            # print_status $GREEN "✅ $(basename "$file") has valid front matter"
        else
            print_status $YELLOW "⚠️  $(basename "$file") missing front matter"
        fi
    fi
done < <(find . -name "*.md" -o -name "*.markdown" | grep -v "_site" | grep -v ".git")

print_status $GREEN "📄 Found $markdown_files markdown files, $valid_frontmatter with front matter"

# Check generated HTML files
print_status $YELLOW "🔍 Checking generated HTML files..."
while IFS= read -r file; do
    if [[ -f "$file" && "$file" =~ \.html$ ]]; then
        ((total_pages++))
        
        # Check for title tag
        if grep -q "<title>" "$file" 2>/dev/null; then
            ((pages_with_titles++))
        fi
        
        # Check for meta description
        if grep -q 'meta name="description"' "$file" 2>/dev/null; then
            ((pages_with_meta++))
        fi
    fi
done < <(find _site -name "*.html" 2>/dev/null)

print_status $GREEN "🔍 Found $total_pages HTML files, $pages_with_titles with titles, $pages_with_meta with meta descriptions"

# Check for common issues
print_status $YELLOW "🔍 Checking for common content issues..."

# Check for placeholder text
placeholder_count=0
if grep -r "Lorem ipsum\|TODO\|FIXME\|placeholder" _site --include="*.html" >/dev/null 2>&1; then
    placeholder_files=$(grep -r "Lorem ipsum\|TODO\|FIXME\|placeholder" _site --include="*.html" | wc -l)
    print_status $YELLOW "⚠️  Found $placeholder_files instances of placeholder text"
    ((placeholder_count=placeholder_files))
fi

# Check for broken image references
print_status $YELLOW "🖼️  Checking image references..."
broken_images=0
total_images=0

while IFS= read -r file; do
    if [[ -f "$file" && "$file" =~ \.html$ ]]; then
        # Extract img src attributes
        img_sources=$(grep -oP 'src="[^"]*"' "$file" 2>/dev/null | sed 's/src="//;s/"//' | grep -E '\.(jpg|jpeg|png|gif|svg|webp)$' || true)
        
        while IFS= read -r img_src; do
            if [ -n "$img_src" ]; then
                ((total_images++))
                
                # Skip external images
                if [[ $img_src =~ ^https?:// ]]; then
                    continue
                fi
                
                # Convert to file path
                if [[ $img_src =~ ^/ ]]; then
                    img_path="_site$img_src"
                else
                    base_dir=$(dirname "$file")
                    img_path="$base_dir/$img_src"
                fi
                
                if [ ! -f "$img_path" ]; then
                    ((broken_images++))
                    print_status $RED "❌ Missing image: $img_src in $(basename "$file")"
                fi
            fi
        done <<< "$img_sources"
    fi
done < <(find _site -name "*.html" 2>/dev/null)

print_status $GREEN "🖼️  Found $total_images image references, $broken_images broken"

# Validate JSON files (like search.json)
print_status $YELLOW "🔍 Validating JSON files..."
json_files=0
valid_json=0

while IFS= read -r file; do
    if [[ -f "$file" && "$file" =~ \.json$ ]]; then
        ((json_files++))
        # Use python3 if available, otherwise try node
        if command -v python3 &> /dev/null; then
            if python3 -m json.tool "$file" >/dev/null 2>&1; then
                ((valid_json++))
                # print_status $GREEN "✅ $(basename "$file") is valid JSON"
            else
                print_status $RED "❌ $(basename "$file") contains invalid JSON"
            fi
        elif command -v node &> /dev/null; then
            if node -e "JSON.parse(require('fs').readFileSync('$file'))" 2>/dev/null; then
                ((valid_json++))
                # print_status $GREEN "✅ $(basename "$file") is valid JSON"
            else
                print_status $RED "❌ $(basename "$file") contains invalid JSON"
            fi
        else
            # Skip JSON validation if neither python3 nor node is available
            ((valid_json++))
            print_status $YELLOW "⚠️  Cannot validate $(basename "$file") - no JSON validator available"
        fi
    fi
done < <(find _site -name "*.json" 2>/dev/null)

print_status $GREEN "🔍 Found $json_files JSON files, $valid_json valid"

print_status $GREEN "🎉 Content validation completed!"
print_status $YELLOW "📊 Summary:"
print_status $YELLOW "   - Markdown files: $markdown_files"
print_status $YELLOW "   - Files with front matter: $valid_frontmatter"
print_status $YELLOW "   - HTML pages: $total_pages"
print_status $YELLOW "   - Pages with titles: $pages_with_titles"
print_status $YELLOW "   - Pages with meta descriptions: $pages_with_meta"
print_status $YELLOW "   - Total images referenced: $total_images"
print_status $YELLOW "   - Broken image references: $broken_images"
print_status $YELLOW "   - JSON files: $json_files"
print_status $YELLOW "   - Valid JSON files: $valid_json"

# Calculate scores
if [ $markdown_files -gt 0 ]; then
    frontmatter_score=$((valid_frontmatter * 100 / markdown_files))
else
    frontmatter_score=100
fi

if [ $total_pages -gt 0 ]; then
    title_score=$((pages_with_titles * 100 / total_pages))
else
    title_score=100
fi

print_status $YELLOW "📈 Content Quality Scores:"
print_status $YELLOW "   - Front matter coverage: ${frontmatter_score}%"
print_status $YELLOW "   - Title tag coverage: ${title_score}%"

# Determine if validation passed
failed=0
if [ $broken_images -gt 0 ]; then
    print_status $RED "❌ Found broken image references"
    ((failed++))
fi

if [ $json_files -gt $valid_json ]; then
    print_status $RED "❌ Found invalid JSON files"
    ((failed++))
fi

if [ $failed -eq 0 ]; then
    print_status $GREEN "✨ Content validation passed!"
    exit 0
else
    print_status $RED "❌ Content validation failed with $failed issues"
    exit 1
fi