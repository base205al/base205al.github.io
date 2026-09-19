# BASE website: a Hugo static site. See README.md and .github/workflows/deploy.yaml.

default: test

# Fetch the Hugo modules (theme, admonitions) pinned in go.mod.
init:
    hugo mod download

# Build the site into ./public, as CI does.
build:
    hugo --minify

# Render every page in memory; any Hugo error fails the run.
test:
    hugo --renderToMemory

# Everything in test, plus a production-environment render.
full-test: test
    hugo --minify --environment production --renderToMemory

# Deploys run in GitHub Actions on push to main; nothing to publish locally.
release: full-test
    @echo "Release = merge to main. GitHub Actions builds and deploys the site."
