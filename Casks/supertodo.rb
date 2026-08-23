cask "supertodo" do
  arch arm: "-arm64"

  version "0.1.5"
  sha256 arm:   "d36110ce975a42d4d2fca19be136a590085f96e82a89f3cbd25008a436921967",
         intel: "7d1ae4bc4f43c431e95037da288224647306440111390160349b5f00e68ac8de"

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
