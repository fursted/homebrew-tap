cask "supertodo" do
  arch arm: "-arm64"

  version "0.1.3"
  sha256 arm:   "cc4e21310872399b997766feb7ecbb53304988ba2e8eec795258e9b7efbab73c",
         intel: "2259e1fdebdf4f16a5994f3bbd37a071ac09539f0098b8f2f429c7771acb88e9"

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
