# National Digital Capacity Library - Sri Lanka

Welcome to the **Digital Library for Digital Sri Lanka**. This repository hosts a comprehensive collection of resources aimed at enhancing digital literacy, professional development, and fostering a vibrant digital economy.

## Features

- **Persona-Based Navigation:** Easily find resources tailored to your specific needs and roles.
- **Structured Categories:** Organized content aligned with core pillars to support strategic initiatives.
- **Interactive Tools:** Engage with self-assessment and certification tools to validate your skills.
- **Community Contributions:** Open for contributions under the Creative Commons license.

## Getting Started

### Prerequisites

- [Jekyll](https://jekyllrb.com/docs/) installed locally for development.
- Git and GitHub account for repository management.

### Installation

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/ICTASL/capacity-building.git
   cd capacity-building
   bundle install
   bundle exec jekyll serve

[Jekyll Command Line Usage](https://jekyllrb.com/docs/usage/)

Visit http://127.0.0.1:4000/capacity-building/ to view the site locally.

## Testing & Validation

### ✅ Quick Answer: Does the Code Work?

**Yes! Here's how to verify it:**

```bash
# Simple one-command check
./check.sh
```

This script will:
- ✅ Install dependencies automatically
- ✅ Build the Jekyll site
- ✅ Validate HTML structure
- ✅ Check essential files and assets
- ✅ Confirm everything works correctly

### Alternative Quick Checks

```bash
# Using Make
make validate-simple

# Or run the validation script directly
./scripts/validate-simple.sh
```

### Comprehensive Testing

For thorough validation including link checking and content validation:

```bash
# Run all validations
./scripts/validate-all.sh

# Or run individual validations
./scripts/validate-build.sh    # Build validation
./scripts/validate-links.sh    # Link checking
./scripts/validate-content.sh  # Content structure validation
```

### Using Make Commands

```bash
make help               # Show available commands
make install            # Install dependencies
make build              # Build the site
make serve              # Start development server
make validate-simple    # Quick validation (recommended)
make validate           # Comprehensive validation
make ci                 # Run CI validation pipeline
```

### Continuous Integration

The repository includes GitHub Actions workflow (`.github/workflows/validate.yml`) that automatically:
- ✅ Builds the Jekyll site
- ✅ Validates HTML structure
- ✅ Checks for broken links
- ✅ Validates content quality
- ✅ Deploys to GitHub Pages (on main branch)

### What Gets Validated

- **Build Process**: Jekyll builds without errors
- **HTML Structure**: Valid DOCTYPE, head, body sections
- **Content Quality**: Front matter, titles, meta descriptions
- **Links**: Internal link validity
- **Assets**: CSS and JavaScript files presence
- **JSON**: Valid JSON structure (search.json, etc.)

