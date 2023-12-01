class Sessionmate < Formula
  desc "Session replay for Flutter to help find and fix bugs in production faster"
  homepage "https://sessionmate.dev/"
  version "0.6.11"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.6.11/sessionmate_macos_x86_64.tar.gz"
      sha256 "7c549686d36666f64874e8546bbb70aef3925a73b98c3aacbd6de7ced9a8dccb"
    end

    if Hardware::CPU.arm?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/v0.6.11/sessionmate_macos_arm64.tar.gz"
      sha256 "f947ebf9f562f71627264030c16ca0f671f100fe5786c09a6d210c38f2c8eca6"
    end
  end

  def install
    bin.install "sessionmate"
  end

  test do
    system "#{bin}/sessionmate"
  end
end
