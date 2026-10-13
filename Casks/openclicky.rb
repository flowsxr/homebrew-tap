cask "openclicky" do
  version "0.9.0"
  sha256 "349774d6ade8d2de26e8e6a4471abb92aa4497d9a4a0268711e4b308c9b0ab5c"

  url "https://github.com/prasanthsasikumar/openclicky/releases/download/v#{version}/OpenClicky-#{version}.dmg"
  name "OpenClicky"
  desc "Voice assistant that points at the answer on your screen and dictates anywhere"
  homepage "https://openclicky.flowsxr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "OpenClicky.app"

  zap trash: [
    "~/Library/Application Support/OpenClicky",
    "~/Library/Application Support/org.openclicky.app",
    "~/Library/Caches/org.openclicky.app",
    "~/Library/Caches/org.openclicky.app.sparkle",
    "~/Library/HTTPStorages/org.openclicky.app",
    "~/Library/HTTPStorages/org.openclicky.app.binarycookies",
    "~/Library/Preferences/org.openclicky.app.plist",
  ]
end
