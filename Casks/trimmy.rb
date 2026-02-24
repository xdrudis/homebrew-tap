cask "trimmy" do
  version "0.8.0"
  sha256 "c1a59fccbcb910cb025a376190c45f30fc7966875d481404ef12dc78f6aa9678"

  url "https://github.com/steipete/Trimmy/releases/download/v#{version}/Trimmy-#{version}.zip"
  name "Trimmy"
  desc "Paste once, run once - flattens multi-line shell snippets so they execute"
  homepage "https://github.com/xdrudis/Trimmy"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Trimmy.app"

  zap trash: [
    "~/Library/Preferences/com.steipete.trimmy.plist",
  ]
end