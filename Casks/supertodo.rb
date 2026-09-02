cask "supertodo" do
  arch arm: "-arm64"

  version "0.1.7"
  sha256 arm:   "518d4b424b9e760aaaed7369672304d05def390ef217d5f365d0646e12dd7733",
         intel: "ac723360d68687e6d8aa6acd60b3309f702760322d71cb9a3538a50793da793e"

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
