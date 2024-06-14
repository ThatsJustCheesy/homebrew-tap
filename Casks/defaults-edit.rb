cask "defaults-edit" do
  version "0.5.0"
  tagged_version = "#{version}"
  sha256 "cb0caa06678d868bc4bf2d1ccdb88b82dc0c3cd4455c1c91b5d18c954d9d0701"

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
