cask "supertodo" do
  arch arm: "-arm64"

  version "0.1.12"
  sha256 arm:   "95c302728109c9eccfb18daab5055bead0b975e168edc9014fa2c712844d84fd",
         intel: "dd0b53fb00ebcc877821192acfadbab4553338af02647883120547781e489604"

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
