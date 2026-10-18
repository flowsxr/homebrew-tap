cask "openclicky" do
  version "0.9.1"
  sha256 "345c5845560de7ecde4259eca3f76f3e3994badf9e25df5c7e8cc7f490e25875"

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
