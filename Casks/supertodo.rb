cask "supertodo" do
  arch arm: "-arm64"

  version "0.1.6"
  sha256 arm:   "d6aa9ece761d10ef7db7e6ef348567866aeb3e2fc6301004362785d999139354",
         intel: "519ed7f91d2e64647c349e1459d4c34e1eae142fb04f3f69033ad345e8f55b87"

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
