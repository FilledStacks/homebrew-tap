class Sessionmate < Formula
  desc "Session replay for Flutter to help find and fix bugs in production faster"
  homepage "https://sessionmate.dev/"
  version "0.6.6"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.6.6/sessionmate_macos_x86_64.tar.gz"
      sha256 "dbafc70af4ae0a0369a303cf3a0b18efd276463c0d02d801382503c54f21ffc5"
    end

    if Hardware::CPU.arm?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.6.6/sessionmate_macos_arm64.tar.gz"
      sha256 "44e1f73109ec3326dc77119f2d3259b1b7dcce87ce790982bfa5670820bd9fed"
    end
  end

  def install
    bin.install "sessionmate"
  end

  test do
    system "#{bin}/sessionmate"
  end
end
