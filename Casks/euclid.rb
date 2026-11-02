# Homebrew cask for Euclid. Install:
#   brew tap stellalie/euclid https://github.com/stellalie/euclid-bar-releases
#   brew install --cask stellalie/euclid/euclid
# Each stable release bumps version and sha256 here (euclid-bar: scripts/bump-cask.sh).
cask "euclid" do
  version "1.4.0"
  sha256 "4f651561fa1f906a3268f4b80342e314340b84a86ecdfac74ca9067201805cc4"

  url "https://github.com/stellalie/euclid-bar-releases/releases/download/v#{version}/Euclid-#{version}.zip"
  name "Euclid"
  desc "Fast, keyboard-first launcher and search bar for developers"
  homepage "https://lgtm.ninja/euclid/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Euclid.app"
  binary "#{appdir}/Euclid.app/Contents/MacOS/euclid-bar"

  uninstall quit: "dev.euclid.Euclid"

  # Leaves ~/.config/euclid alone: that's your config, often kept in git.
  zap trash: [
    "~/Library/Application Support/Euclid",
    "~/Library/Caches/dev.euclid.Euclid",
    "~/Library/HTTPStorages/dev.euclid.Euclid",
    "~/Library/Preferences/dev.euclid.Euclid.plist",
  ]
end
