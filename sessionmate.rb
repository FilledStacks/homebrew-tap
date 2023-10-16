class Sessionmate < Formula
  desc "Session replay for Flutter to help find and fix bugs in production faster"
  homepage "https://sessionmate.dev/"
  url "https://github.com/FilledStacks/session_mate/releases/download/v0.3.0/sessionmate.tar.gz"
  sha256 "49017134f4136be7dd9e36044d31aec0f335b8c7945cdea1b726a5a4c702f607"
  license "MIT"

  def install
    bin.install "sessionmate"
  end

  test do
    system "#{bin}/sessionmate"
  end
end
