cask "supertodo" do
  arch arm: "-arm64"

  version "0.1.2"
  sha256 arm:   "b6fc7a6a91b09411461fd530b1184dd90a940ee9753e9cb3b8561aa13218f22c",
         intel: "7890abf705ec0cfd76837e3437db81f11b29e12f4df9bac331e9179a60ae1260"

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
