class Sessionmate < Formula
  desc "Session replay for Flutter to help find and fix bugs in production faster"
  homepage "https://sessionmate.dev/"
  url "https://github.com/FilledStacks/session_mate/releases/download/v.0.2.0/sessionmate.tar.gz"
  sha256 "eaa610cbd040bd3f18b6a0540d0c4827acefd7d23c2d3f2a4a037dc01ab0b43b"
  license "MIT"

  def install
    bin.install "sessionmate"
  end

  test do
    system "#{bin}/sessionmate"
  end
end
