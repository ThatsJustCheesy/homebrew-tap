cask "defaults-edit" do
  version "0.6.0"
  tagged_version = "#{version}"
  sha256 "90170da76404ff8bdf3da80920bf3f1ed49d523eddd52ac0bfb57dc9f95be929"

  url "https://github.com/ThatsJustCheesy/defaults-edit/releases/download/v#{tagged_version}/defaults-edit.v#{version}.zip"

  name "defaults edit"
  desc "Graphical user defaults editor"
  homepage "https://github.com/ThatsJustCheesy/defaults-edit"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "defaults edit.app"

  zap trash: [
    "~/Library/Preferences/com.justcheesy.defaults-edit.plist",
    "~/Library/Preferences/ca.igregory.defaults-edit.plist",
  ]
end
