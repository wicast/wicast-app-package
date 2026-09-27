cask "dsh-next" do
  version "2.0.15-next"
  sha256 "ece2bbcf9646eafdbbbd4ced4d32782a374f829bce09e5193206f7f5fa5517f3"

  url "https://github.com/anywhere-labs/dsh-desktop/releases/download/v#{version}/DSH-NEXT-#{version}-universal.dmg"
  name "DSH NEXT"
  desc "Desktop app for DeepSeek Harness (community-maintained, not an official DeepSeek product)"
  homepage "https://dshdesktop.cn"

  livecheck do
    url "https://api.github.com/repos/anywhere-labs/dsh-desktop/releases/latest"
    strategy :json do |json|
      json["tag_name"]&.delete_prefix("v")
    end
  end

  depends_on macos: :big_sur

  app "DSH NEXT.app"

  zap trash: [
    "~/Library/Application Support/DSH NEXT",
    "~/Library/Caches/ai.deepseek.dsh.desktop.next",
    "~/Library/CrashReporter/DSH NEXT*.crash",
    "~/Library/Logs/DSH NEXT",
    "~/Library/Preferences/ai.deepseek.dsh.desktop.next.plist",
    "~/Library/Saved Application State/ai.deepseek.dsh.desktop.next.savedState",
  ]
end
