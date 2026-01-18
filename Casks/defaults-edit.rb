cask "defaults-edit" do
  version "0.8.0"
  tagged_version = "#{version}"
  sha256 "787eb762894e9041fd668227ec12721b3919b69e3f77d6c31ff813d48d8a79c5"

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
