#!/bin/bash

# Link validation script for Jekyll site
# This script checks for broken internal links and validates link structure

set -e

echo "🔗 Starting link validation for Jekyll site..."

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

print_status $YELLOW "🔍 Scanning for internal links..."

# Find all HTML files
html_files=$(find _site -name "*.html")
total_links=0
broken_links=0
valid_links=0

# Function to check if a link exists
check_link() {
    local link=$1
    local base_file=$2
    
    # Skip external links (http/https)
    if [[ $link =~ ^https?:// ]]; then
        return 0
    fi
    
    # Skip email links
    if [[ $link =~ ^mailto: ]]; then
        return 0
    fi
    
    # Skip anchor-only links (#something)
    if [[ $link =~ ^# ]]; then
        return 0
    fi
    
    # Convert relative links to absolute paths
    if [[ $link =~ ^/ ]]; then
        # Absolute path from site root
        target_file="_site$link"
    else
        # Relative path from current file
        base_dir=$(dirname "$base_file")
        target_file="$base_dir/$link"
    fi
    
    # Remove fragment identifier (#anchor)
    target_file=${target_file%%#*}
    
    # If link ends with /, assume index.html
    if [[ $target_file == */ ]]; then
        target_file="${target_file}index.html"
    fi
    
    # If link doesn't have extension, assume it's a directory with index.html
    if [[ ! $target_file =~ \.[a-zA-Z]+$ ]]; then
        if [ -d "$target_file" ]; then
            target_file="$target_file/index.html"
        fi
    fi
    
    # Check if target exists
    if [ -f "$target_file" ] || [ -d "$target_file" ]; then
        return 0
    else
        return 1
    fi
}

# Process each HTML file
for html_file in $html_files; do
    # Skip if no file
    if [ ! -f "$html_file" ]; then
        continue
    fi
    
    print_status $YELLOW "🔍 Checking links in $(basename "$html_file")..."
    
    # Extract all href attributes, handling various quote styles
    links=$(grep -oP 'href="[^"]*"' "$html_file" 2>/dev/null | sed 's/href="//;s/"//' || true)
    
    if [ -z "$links" ]; then
        print_status $YELLOW "   No links found"
        continue
    fi
    
    while IFS= read -r link; do
        if [ -n "$link" ]; then
            ((total_links++))
            if check_link "$link" "$html_file"; then
                ((valid_links++))
            else
                ((broken_links++))
                print_status $RED "❌ Broken link: $link in $(basename "$html_file")"
            fi
        fi
    done <<< "$links"
done

print_status $GREEN "🎉 Link validation completed!"
print_status $YELLOW "📊 Summary:"
print_status $YELLOW "   - Total links checked: $total_links"
print_status $YELLOW "   - Valid links: $valid_links"
print_status $YELLOW "   - Broken links: $broken_links"

if [ $broken_links -eq 0 ]; then
    print_status $GREEN "✨ All links are valid!"
    exit 0
else
    print_status $RED "❌ Found $broken_links broken links!"
    exit 1
fi