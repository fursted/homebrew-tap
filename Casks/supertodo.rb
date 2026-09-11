cask "supertodo" do
  arch arm: "-arm64"

  version "0.1.9"
  sha256 arm:   "0da35a3504ba792345cb1d94ddc88d0cf0a6f5bc94db953d0f7eb48ea9130b4e",
         intel: "9c947b03d84e3816851935dbb2e8f405a3e1409979b2c37c1fc2911c5c79fc8e"

  url "https://github.com/fursted/homebrew-tap/releases/download/v#{version}/supertodo-#{version}#{arch}.dmg"
  name "supertodo"
  desc "Desktop shell for the supertodo app"
  homepage "https://github.com/fursted/homebrew-tap"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "supertodo.app"

  zap trash: [
    "~/Library/Application Support/supertodo",
    "~/Library/Preferences/com.supertodo.desktop.plist",
    "~/Library/Saved Application State/com.supertodo.desktop.savedState",
  ]
end
