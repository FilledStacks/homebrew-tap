class Sessionmate < Formula
  desc "Session replay for Flutter to help find and fix bugs in production faster"
  homepage "https://sessionmate.dev/"
  version "0.6.6+2"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.6.6%2B2/sessionmate_macos_x86_64.tar.gz"
      sha256 "174260fea85e99f9b328344542cbe994b670fa0e0afbb5ebe49142a0f98e04d1"
    end

    if Hardware::CPU.arm?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.6.6%2B2/sessionmate_macos_arm64.tar.gz"
      sha256 "08f6cc41bdf48eb3154f18fab935de0d800865b941bd76c2970a8edad202d93a"
    end
  end

  def install
    bin.install "sessionmate"
  end

  test do
    system "#{bin}/sessionmate"
  end
end
