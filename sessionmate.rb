require_relative "custom_download_strategy.rb"

class Sessionmate < Formula
  desc "Session replay for Flutter to help find and fix bugs in production faster"
  homepage "https://sessionmate.dev/"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/untagged-53237f7b0858952baddb/sessionmate_macos_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d03b14e0fb780221cc24702e8832d9535ddd52da3c06bf971193ca4b74e51048"
    end

    if Hardware::CPU.arm?
      url "https://github.com/FilledStacks/session_mate_cli/releases/download/untagged-53237f7b0858952baddb/sessionmate_macos_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "fcab8361451502679615af9d76b269ddad186b0c7b6a198eea038a4865a35df7"
    end
  end

  def install
    bin.install "sessionmate"
  end

  test do
    system "#{bin}/sessionmate"
  end
end
