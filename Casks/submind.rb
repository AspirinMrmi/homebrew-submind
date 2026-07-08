cask "submind" do
  version "1.0.1"
  sha256 "9e3bb83be04b068b0f7d619b4dedcd4ec8ed0db987907f2a8e1ad92c4433f9c7"

  url "https://github.com/AspirinMrmi/SubMind/releases/download/v#{version}/SubMind-#{version}.zip"
  name "SubMind"
  desc "macOS subscription manager"
  homepage "https://github.com/AspirinMrmi/SubMind"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "SubMind.app"

  postflight do
    system_command("xattr", args: ["-cr", "#{appdir}/SubMind.app"])
  end

  zap trash: [
    "~/Library/Documents/SubMind",
    "~/Library/Application Support/SubMind"
  ]
end
