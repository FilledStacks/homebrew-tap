class Sessionmate < Formula
  desc "Session replay for Flutter to help find and fix bugs in production faster"
  homepage "https://sessionmate.dev/"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.4.0/sessionmate_macos_x86_64.tar.gz"
      sha256 "c8ee4446b7a74363044fae15c77fc6f42e21cb163a1896fe949277aae4c38321"
    end

    if Hardware::CPU.arm?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.4.0/sessionmate_macos_arm64.tar.gz"
      sha256 "b99e4707e891990d1f848fdd2c8d811362ed67942026ecf5a47df8a585e2fc24"
    end
  end

  def install
    bin.install "sessionmate"
  end

  test do
    system "#{bin}/sessionmate"
  end
end
