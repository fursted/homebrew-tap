cask "supertodo" do
  arch arm: "-arm64"

  version "0.1.10"
  sha256 arm:   "921fb35e215ff141c3ded29946b737dd2e5b515a3ac84ee8140428ced0bbf5a0",
         intel: "6ef31214f01c449ada6b4800cccd5e6fa911bcc0f098d7dc6f582a0dfa0c811e"

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
