cask "supertodo" do
  arch arm: "-arm64"

  version "0.1.11"
  sha256 arm:   "60ab97ea5ab7188eda6312d61d415e28c99289595850f8e39604e8e545134492",
         intel: "134d57deb704c726108ec5f1389a9a6576119c0777783fb865df1ebcbc083d02"

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
