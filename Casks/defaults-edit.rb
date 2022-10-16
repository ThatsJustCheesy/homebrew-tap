cask "defaults-edit" do
  version "0.4.0"
  sha256 "9ee9ebffb4f9d07450f901502d10a48e82b5f01f6a47d1ca462ad17e19c64373"

  url "https://github.com/ThatsJustCheesy/defaults-edit/releases/download/v#{version}/defaults-edit.v#{version}.zip",
      verified: "https://github.com/ThatsJustCheesy/defaults-edit"

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
  ]
end
