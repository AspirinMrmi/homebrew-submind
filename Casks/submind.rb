cask "submind" do
  version "1.0.2"
  sha256 "eb913d4dbd7fdcad263c695c419a03b2a73ebd00a7a49182f3233d5863e64fe4"

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
