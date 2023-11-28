class Sessionmate < Formula
  desc "Session replay for Flutter to help find and fix bugs in production faster"
  homepage "https://sessionmate.dev/"
  version "0.6.10"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.6.10/sessionmate_macos_x86_64.tar.gz"
      sha256 "7372e8d1c00e79a934c113e8e58f6dc57661b00081e9d1973196f5d202b88ccb"
    end

    if Hardware::CPU.arm?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.6.10/sessionmate_macos_arm64.tar.gz"
      sha256 "a51b06c1788fc14df06a07939b35c9369199195cb0c46a3c995d9e4360389829"
    end
  end

  def install
    bin.install "sessionmate"
  end

  test do
    system "#{bin}/sessionmate"
  end
end
