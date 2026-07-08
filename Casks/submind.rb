cask "submind" do
  version "1.0.0"
  sha256 "ef9adcf0e9d42f465fc69d21cfa97d8f63e3862f8fa03ad6456f182d976436fb"

  url "https://github.com/AspirinMrmi/SubMind/releases/download/v#{version}/SubMind-#{version}.zip"
  name "SubMind"
  desc "macOS subscription manager - 付费订阅管理、到期提醒、统计仪表盘"
  homepage "https://github.com/AspirinMrmi/SubMind"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "SubMind.app"

  zap trash: [
    "~/Library/Documents/SubMind",
    "~/Library/Application Support/SubMind"
  ]
end
