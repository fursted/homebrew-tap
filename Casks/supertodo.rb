cask "supertodo" do
  arch arm: "-arm64"

  version "0.1.8"
  sha256 arm:   "c169285ebe087bbb874b8e3f26eb4b952ace86c9182c49cc572e2a62c094ae95",
         intel: "83bf29270e7dcb3c09520754e1d71aec7f8e0b59aee50fad8f3a4a4f1c7f9c5f"

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
