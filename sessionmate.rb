class Sessionmate < Formula
  desc "Session replay for Flutter to help find and fix bugs in production faster"
  homepage "https://sessionmate.dev/"
  version "0.6.1"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.6.1/sessionmate_macos_x86_64.tar.gz"
      sha256 "0470f3bea5715425d724b12d18dcc1d5ea0ff21d2ae8a1a11d72a0e3d6193966"
    end

    if Hardware::CPU.arm?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.6.1/sessionmate_macos_arm64.tar.gz"
      sha256 "8bebbdd48619576b40b8f5eb9af3d29acee6b98243f9f1ed68b5f9d7b723ba69"
    end
  end

  def install
    bin.install "sessionmate"
  end

  test do
    system "#{bin}/sessionmate"
  end
end
