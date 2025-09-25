#!/bin/bash

# Main validation script for Jekyll site
# This script runs all validation checks to ensure the code works correctly

set -e

echo "🚀 Starting comprehensive site validation..."
echo "=================================================="

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

print_status() {
    local color=$1
    local message=$2
    echo -e "${color}${message}${NC}"
}

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

# Change to project directory
cd "$PROJECT_DIR"

print_status $BLUE "📍 Working directory: $PROJECT_DIR"
echo ""

# Make sure all scripts are executable
chmod +x scripts/*.sh

# Track validation results
build_passed=false
links_passed=false
content_passed=false

print_status $BLUE "🔧 Step 1: Build Validation"
print_status $BLUE "============================================"
if ./scripts/validate-build.sh; then
    build_passed=true
    print_status $GREEN "✅ Build validation PASSED"
else
    print_status $RED "❌ Build validation FAILED"
fi

echo ""
print_status $BLUE "🔗 Step 2: Link Validation"
print_status $BLUE "============================================"
if ./scripts/validate-links.sh; then
    links_passed=true
    print_status $GREEN "✅ Link validation PASSED"
else
    print_status $RED "❌ Link validation FAILED"
fi

echo ""
print_status $BLUE "📝 Step 3: Content Validation"
print_status $BLUE "============================================"
if ./scripts/validate-content.sh; then
    content_passed=true
    print_status $GREEN "✅ Content validation PASSED"
else
    print_status $RED "❌ Content validation FAILED"
fi

echo ""
print_status $BLUE "📊 Final Results"
print_status $BLUE "============================================"

if $build_passed; then
    print_status $GREEN "✅ Build Validation: PASSED"
else
    print_status $RED "❌ Build Validation: FAILED"
fi

if $links_passed; then
    print_status $GREEN "✅ Link Validation: PASSED"
else
    print_status $RED "❌ Link Validation: FAILED"
fi

if $content_passed; then
    print_status $GREEN "✅ Content Validation: PASSED"
else
    print_status $RED "❌ Content Validation: FAILED"
fi

echo ""

if $build_passed && $links_passed && $content_passed; then
    print_status $GREEN "🎉 ALL VALIDATIONS PASSED!"
    print_status $GREEN "✨ The code works correctly and is ready for deployment."
    exit 0
else
    print_status $RED "❌ SOME VALIDATIONS FAILED!"
    print_status $RED "🔧 Please fix the issues above and run the validation again."
    exit 1
fi