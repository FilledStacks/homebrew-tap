class Sessionmate < Formula
  desc "Session replay for Flutter to help find and fix bugs in production faster"
  homepage "https://sessionmate.dev/"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.3.0%2B3/sessionmate_macos_x86_64.tar.gz"
      sha256 "ed396805a9be074da23253907405b654bc6eb6c574bdb03f8f185b1f7c7d561e"
    end

    if Hardware::CPU.arm?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.3.0%2B3/sessionmate_macos_arm64.tar.gz"
      sha256 "763726ded7b2ddff2604c436cdc3547aa3a392ba705f0b379ba521edeff85e9b"
    end
  end

  def install
    bin.install "sessionmate"
  end

  test do
    system "#{bin}/sessionmate"
  end
end
