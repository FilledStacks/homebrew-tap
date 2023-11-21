class Sessionmate < Formula
  desc "Session replay for Flutter to help find and fix bugs in production faster"
  homepage "https://sessionmate.dev/"
  version "0.6.7"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.6.7/sessionmate_macos_x86_64.tar.gz"
      sha256 "c62a03c7fdfa206b996487fd864a2f7adfd7d64058927e3297130eb864cd70a4"
    end

    if Hardware::CPU.arm?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.6.7/sessionmate_macos_arm64.tar.gz"
      sha256 "47aa1a67b96cdba96484bb0f8548896482fee022d025e1ec0acad8330bc8a291"
    end
  end

  def install
    bin.install "sessionmate"
  end

  test do
    system "#{bin}/sessionmate"
  end
end
