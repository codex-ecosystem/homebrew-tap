cask "codex-agent-bar" do
  version "0.9.9"
  sha256 "af98e2f098a5f4918adde8a14544219f967a64264a541be7fbc1e311a3349268"

  url "https://github.com/codex-ecosystem/codex-agent-bar/releases/download/v0.9.9/AgentBar-0.9.9.dmg"
  name "Codex Agent Bar"
  desc "Menu bar app for monitoring Codex quota"
  homepage "https://github.com/codex-ecosystem/codex-agent-bar"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "AgentBar.app"

  uninstall quit: "com.lonewolfyx.AgentBar"

  zap trash: "~/Library/Preferences/com.lonewolfyx.AgentBar.plist"
end
