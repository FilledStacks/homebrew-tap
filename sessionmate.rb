class Sessionmate < Formula
  desc "Session replay for Flutter to help find and fix bugs in production faster"
  homepage "https://sessionmate.dev/"
  version "0.6.3"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.6.3/sessionmate_macos_x86_64.tar.gz"
      sha256 "63c62c753c563a6367646d32fb56de2bfe991ea471a14408a7d99733cc1bc9f9"
    end

    if Hardware::CPU.arm?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.6.3/sessionmate_macos_arm64.tar.gz"
      sha256 "9fba62b5ca9bf4af3529436898645c1c1566a7ebbaf082a8d3151c60720805ca"
    end
  end

  def install
    bin.install "sessionmate"
  end

  test do
    system "#{bin}/sessionmate"
  end
end
