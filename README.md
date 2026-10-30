# homebrew-tap

Homebrew casks for [OpenClicky](https://openclicky.org), the free, open-source voice assistant for macOS.

    brew install --cask flowsxr/tap/openclicky

OpenClicky updates itself (Sparkle), so you don't need `brew upgrade` to stay current.

The cask follows OpenClicky's releases on its own: `.github/workflows/bump-openclicky.yml` installs each
new release on a macOS runner, checks that Gatekeeper calls it notarized, then updates the version and
checksum.
