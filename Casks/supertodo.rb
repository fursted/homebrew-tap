cask "supertodo" do
  version "0.1.1"

  on_arm do
    sha256 "f2d305eeff2483934b21562eeac740775cc4009b3dd9f4ded1ad06d0b050e137"
    url "https://github.com/furst/supertodo/releases/download/v#{version}/supertodo-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "b23b6d5e0a3c11c406822882773e5bb2b4155e3215c37163bf1f8a26ccc3234f"
    url "https://github.com/furst/supertodo/releases/download/v#{version}/supertodo-#{version}.dmg"
  end

  name "supertodo"
  desc "Desktop shell for the supertodo app"
  homepage "https://github.com/furst/supertodo"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "supertodo.app"

  zap trash: [
    "~/Library/Application Support/supertodo",
    "~/Library/Preferences/com.supertodo.desktop.plist",
    "~/Library/Saved Application State/com.supertodo.desktop.savedState",
  ]
end
