class Sessionmate < Formula
  desc "Session replay for Flutter to help find and fix bugs in production faster"
  homepage "https://sessionmate.dev/"
  version "0.6.2"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.6.2/sessionmate_macos_x86_64.tar.gz"
      sha256 "24834eef33b1ef0b5491f635d167f6dbe17f52bd540636a7339a247ce7564917"
    end

    if Hardware::CPU.arm?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.6.2/sessionmate_macos_arm64.tar.gz"
      sha256 "c203684543a17474172d3116ef71b722ea597099deb718e5ea39d00a61965d81"
    end
  end

  def install
    bin.install "sessionmate"
  end

  test do
    system "#{bin}/sessionmate"
  end
end
