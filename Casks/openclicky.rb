cask "openclicky" do
  version "0.13.0"
  sha256 "1102b43592bb0423fc4afb1d3c2b670846ba2b54bfedc4aa7d5a6e75a4a51139"

  url "https://github.com/prasanthsasikumar/openclicky/releases/download/v#{version}/OpenClicky-#{version}.dmg"
  name "OpenClicky"
  desc "Voice assistant that points at the answer on your screen and dictates anywhere"
  homepage "https://openclicky.org/"

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
