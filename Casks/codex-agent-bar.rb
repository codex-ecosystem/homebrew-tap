cask "codex-agent-bar" do
  version "0.9.7"
  sha256 "bf26dae8d1081223775c687249e2d71950f9ceeff5fb4ae19aac8fbfbe9d428c"

  url "https://github.com/codex-ecosystem/codex-agent-bar/releases/download/v0.9.7/AgentBar-0.9.7.dmg"
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
