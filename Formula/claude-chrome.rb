class ClaudeChrome < Formula
  desc "Give each Claude Desktop account its own Chrome profile for Claude in Chrome"
  homepage "https://github.com/lcbasu/claude-chrome"
  url "https://github.com/lcbasu/claude-chrome/releases/download/v0.3.0/claude-chrome-0.3.0.tar.gz"
  sha256 "6ceb729bd9845009571c01c8a9ea5230157786936d6fee0d0a55ccd1b3b48f45"
  license "MIT"

  depends_on :macos

  def install
    bin.install "claude-chrome"
  end

  def caveats
    <<~EOS
      Finish setup (safe to re-run any time):
        claude-chrome

      To remove everything it set up:
        claude-chrome uninstall && brew uninstall claude-chrome
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-chrome version")
  end
end
