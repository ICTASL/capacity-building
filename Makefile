# Makefile for Jekyll site validation and development

.PHONY: help install build serve validate clean validate-build validate-links validate-content validate-simple

# Default target
help: ## Show this help message
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

install: ## Install dependencies
	bundle install

build: ## Build the Jekyll site
	bundle exec jekyll build

serve: ## Serve the site locally for development
	bundle exec jekyll serve --host 0.0.0.0 --port 4000

validate-simple: ## Run simple validation (quick check if code works)
	@chmod +x scripts/validate-simple.sh
	@./scripts/validate-simple.sh

validate: ## Run comprehensive validations (build, links, content)
	@chmod +x scripts/validate-all.sh
	@./scripts/validate-all.sh

validate-build: ## Run build validation only
	@chmod +x scripts/validate-build.sh
	@./scripts/validate-build.sh

validate-links: ## Run link validation only
	@chmod +x scripts/validate-links.sh
	@./scripts/validate-links.sh

validate-content: ## Run content validation only
	@chmod +x scripts/validate-content.sh
	@./scripts/validate-content.sh

clean: ## Clean generated files
	rm -rf _site .jekyll-cache .jekyll-metadata

# Development workflow
dev: install build serve ## Setup and start development server

# CI/CD workflow
ci: install validate-simple ## Run CI validation pipeline (simple)