cask "defaults-edit" do
  version "0.7.0"
  tagged_version = "#{version}"
  sha256 "6d19fdb70235f4d019c2d8eb824636cd1921b145b5b2803b9b4945040fa9b6f9"

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
