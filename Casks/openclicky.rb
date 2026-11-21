cask "openclicky" do
  version "0.12.1"
  sha256 "98c254f28756c6983bd4982e8024b95b71f2f17afeccdc956753c35c043eff8f"

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
