cask "openclicky" do
  version "0.8.7"
  sha256 "b96efc282cb6fa16a88f16be8d80ce598288b54ee444f5282dcc33bf7c5f71f7"

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
