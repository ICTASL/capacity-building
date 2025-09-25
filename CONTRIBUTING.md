# Contributing to National Digital Capacity Library

Thank you for your interest in contributing to the National Digital Capacity Library! This guide will help you get started.

## Quick Start for Contributors

### 1. Verify Your Setup Works

Before making any changes, ensure the code works on your system:

```bash
./check.sh
```

This validates that:
- Jekyll builds successfully
- All dependencies are installed
- The site structure is valid
- Assets are properly generated

### 2. Making Changes

1. Fork the repository
2. Create a new branch for your changes
3. Make your modifications
4. Test your changes (see Testing section below)
5. Submit a pull request

### 3. Testing Your Changes

**Always test your changes before submitting a pull request:**

```bash
# Quick validation (recommended for most changes)
./check.sh

# Comprehensive validation (recommended for structural changes)
make validate

# Individual tests
make validate-build    # Check if Jekyll builds
make validate-links    # Check for broken links
make validate-content  # Validate content structure
```

## Development Workflow

### Local Development

```bash
# Install dependencies
make install

# Start development server
make serve
# or
bundle exec jekyll serve

# View at http://localhost:4000/capacity-building/
```

### Before Committing

```bash
# Validate your changes
./check.sh

# Clean up generated files (optional)
make clean
```

## Validation Levels

### 1. Simple Validation (`./check.sh`)
- ✅ Jekyll builds without errors
- ✅ Essential files exist (index.html, feed.xml)
- ✅ HTML structure is valid
- ✅ Assets are present

**Use for**: Content changes, minor updates

### 2. Build Validation (`make validate-build`)
- ✅ All simple validation checks
- ✅ Detailed file counting and statistics
- ✅ RSS feed validation
- ✅ Comprehensive HTML structure checking

**Use for**: Template changes, configuration updates

### 3. Comprehensive Validation (`make validate`)
- ✅ All build validation checks
- ✅ Internal link validation
- ✅ Image reference validation
- ✅ Content quality checks
- ✅ JSON structure validation

**Use for**: Major changes, before releases

## Continuous Integration

The repository uses GitHub Actions to automatically validate all pull requests. The CI pipeline:

1. Sets up Ruby and Jekyll environment
2. Installs dependencies
3. Runs build validation
4. Checks for broken links
5. Validates content structure
6. Deploys to GitHub Pages (if merged to main)

Your pull request must pass all CI checks before it can be merged.

## Content Guidelines

### Markdown Files
- Include front matter with layout, title, and description
- Use consistent heading structure
- Include meta descriptions for SEO

### Images
- Optimize images for web (compress, appropriate format)
- Include alt text for accessibility
- Store in `/assets/images/` directory

### Links
- Use relative links for internal content
- Test all external links
- Use descriptive link text

## Getting Help

- Check existing issues for similar problems
- Create a new issue for bugs or feature requests
- Tag maintainers for urgent issues

## File Structure

```
capacity-building/
├── _config.yml           # Jekyll configuration
├── _layouts/             # Page templates
├── _includes/            # Reusable components
├── assets/               # CSS, JS, images
├── scripts/              # Validation scripts
├── check.sh              # Quick validation script
├── Makefile              # Build automation
└── [content directories] # Markdown content
```

## Validation Scripts

- `check.sh` - Simple entry point for validation
- `scripts/validate-simple.sh` - Quick validation
- `scripts/validate-build.sh` - Build validation
- `scripts/validate-links.sh` - Link checking
- `scripts/validate-content.sh` - Content validation
- `scripts/validate-all.sh` - Comprehensive validation

## Questions?

Feel free to open an issue or contact the maintainers if you have questions about contributing or the validation process.