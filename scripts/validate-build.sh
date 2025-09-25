#!/bin/bash

# Build validation script for Jekyll site
# This script checks if the Jekyll site builds successfully and validates basic functionality

set -e  # Exit on any error

echo "🔍 Starting build validation for Jekyll site..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    local color=$1
    local message=$2
    echo -e "${color}${message}${NC}"
}

# Check if bundler is available
if ! command -v bundle &> /dev/null; then
    print_status $RED "❌ Bundler is not installed. Please install bundler first."
    exit 1
fi

print_status $YELLOW "📦 Installing dependencies..."
bundle install --quiet

print_status $YELLOW "🏗️  Building Jekyll site..."
if bundle exec jekyll build --quiet; then
    print_status $GREEN "✅ Jekyll build successful!"
else
    print_status $RED "❌ Jekyll build failed!"
    exit 1
fi

# Check if _site directory was created
if [ ! -d "_site" ]; then
    print_status $RED "❌ _site directory not found after build!"
    exit 1
fi

# Check if index.html exists
if [ ! -f "_site/index.html" ]; then
    print_status $RED "❌ index.html not found in _site directory!"
    exit 1
fi

print_status $YELLOW "🔍 Validating generated files..."

# Count generated HTML files
html_count=$(find _site -name "*.html" | wc -l)
print_status $GREEN "📄 Generated $html_count HTML files"

# Check if CSS files exist
if [ -d "_site/assets/css" ]; then
    css_count=$(find _site/assets/css -name "*.css" | wc -l)
    print_status $GREEN "🎨 Found $css_count CSS files"
else
    print_status $YELLOW "⚠️  No CSS directory found"
fi

# Check if JS files exist
if [ -d "_site/assets/js" ]; then
    js_count=$(find _site/assets/js -name "*.js" | wc -l)
    print_status $GREEN "⚡ Found $js_count JavaScript files"
else
    print_status $YELLOW "⚠️  No JavaScript directory found"
fi

# Basic HTML validation - check for DOCTYPE and basic structure
print_status $YELLOW "🔍 Performing basic HTML validation..."

index_file="_site/index.html"
if grep -q "<!DOCTYPE html>" "$index_file"; then
    print_status $GREEN "✅ DOCTYPE declaration found"
else
    print_status $RED "❌ DOCTYPE declaration missing"
    exit 1
fi

if grep -q "<html" "$index_file"; then
    print_status $GREEN "✅ HTML tag found"
else
    print_status $RED "❌ HTML tag missing"
    exit 1
fi

if grep -q "<head>" "$index_file" && grep -q "</head>" "$index_file"; then
    print_status $GREEN "✅ Head section found"
else
    print_status $RED "❌ Head section missing or malformed"
    exit 1
fi

if grep -q "<body>" "$index_file" && grep -q "</body>" "$index_file"; then
    print_status $GREEN "✅ Body section found"
else
    print_status $RED "❌ Body section missing or malformed"
    exit 1
fi

# Check if feed.xml was generated
if [ -f "_site/feed.xml" ]; then
    print_status $GREEN "✅ RSS feed generated"
else
    print_status $YELLOW "⚠️  RSS feed not found"
fi

print_status $GREEN "🎉 Build validation completed successfully!"
print_status $YELLOW "📊 Summary:"
print_status $YELLOW "   - Jekyll build: ✅ Successful"
print_status $YELLOW "   - HTML files: $html_count generated"
print_status $YELLOW "   - Basic HTML structure: ✅ Valid"
print_status $YELLOW "   - Site ready for deployment"

echo ""
print_status $GREEN "✨ All validations passed! The code works correctly."