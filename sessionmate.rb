class Sessionmate < Formula
  desc "Session replay for Flutter to help find and fix bugs in production faster"
  homepage "https://sessionmate.dev/"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.3.0%2B4/sessionmate_macos_x86_64.tar.gz"
      sha256 "77611139398f96268039ffe9774d8dd97965949fd8d88a32130e6aa796a1638c"
    end

    if Hardware::CPU.arm?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.3.0%2B4/sessionmate_macos_arm64.tar.gz"
      sha256 "a197d064ac89106ba00c0a9c9b614f813749da9d222b1fee8ca12c74d52ff33d"
    end
  end

  def install
    bin.install "sessionmate"
  end

  test do
    system "#{bin}/sessionmate"
  end
end
