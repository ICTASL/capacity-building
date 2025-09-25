#!/bin/bash

# Quick check script - Does the code work?
# This is a simple entry point for users to validate the Jekyll site

echo "🔍 Checking if the code works..."
echo "==============================="

# Check if we're in the right directory
if [ ! -f "_config.yml" ]; then
    echo "❌ Error: This doesn't appear to be a Jekyll project directory"
    echo "Please run this script from the project root directory"
    exit 1
fi

# Check if bundler is available
if ! command -v bundle &> /dev/null; then
    echo "❌ Bundler is not installed. Installing bundler..."
    if command -v gem &> /dev/null; then
        gem install --user-install bundler
        export PATH="$HOME/.local/share/gem/ruby/3.2.0/bin:$PATH"
    else
        echo "❌ Ruby and gem are required. Please install Ruby first."
        exit 1
    fi
fi

# Install dependencies if needed
if [ ! -d ".bundle" ] && [ ! -f ".bundle/config" ]; then
    echo "📦 Installing dependencies..."
    bundle install
fi

# Run the simple validation
if [ -f "scripts/validate-simple.sh" ]; then
    chmod +x scripts/validate-simple.sh
    ./scripts/validate-simple.sh
else
    echo "❌ Validation script not found"
    exit 1
fi