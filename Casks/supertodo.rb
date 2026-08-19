cask "supertodo" do
  arch arm: "-arm64"

  version "0.1.4"
  sha256 arm:   "0786713c41c25ea51101ec9774b9244000fe028be64accf9f0ba106a5e29fd6c",
         intel: "7c6a4352e60ba7d6a61e549453a70fd1de0c3165fd13322a6215d76eeb8f3a48"

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
