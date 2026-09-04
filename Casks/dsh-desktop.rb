cask "dsh-desktop" do
  version "2.0.3"
  sha256 "9a5d4a51689baa7c24be7f11903f0ba9cfe4885a3241e573a1cc4134cd500329"

  url "https://github.com/anywhere-labs/dsh-desktop/releases/download/v#{version}/DSH.Desktop-#{version}-universal.dmg",
      verified: "github.com/anywhere-labs/dsh-desktop/"
  name "DSH Desktop"
  desc "Desktop app for DeepSeek Harness (community-maintained, not an official DeepSeek product)"
  homepage "https://dshdesktop.cn"

  livecheck do
    url "https://api.github.com/repos/anywhere-labs/dsh-desktop/releases/latest"
    strategy :json do |json|
      json["tag_name"]&.delete_prefix("v")
    end
  end

  depends_on macos: :big_sur

  app "DSH Desktop.app"

  zap trash: [
    "~/Library/Application Support/DSH Desktop",
    "~/Library/Caches/ai.deepseek.dsh.desktop",
    "~/Library/CrashReporter/DSH Desktop*.crash",
    "~/Library/Logs/DSH Desktop",
    "~/Library/Preferences/ai.deepseek.dsh.desktop.plist",
    "~/Library/Saved Application State/ai.deepseek.dsh.desktop.savedState",
  ]
end
