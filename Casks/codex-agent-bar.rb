cask "codex-agent-bar" do
  version "0.9.8"
  sha256 "45c997f44ad377f166ea85f1123844458639ab33aedd1083d301b7031b9e4ff2"

  url "https://github.com/codex-ecosystem/codex-agent-bar/releases/download/v0.9.8/AgentBar-0.9.8.dmg"
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
