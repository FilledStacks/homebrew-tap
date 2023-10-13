class Sessionmate < Formula
  desc "Session replay for Flutter to help find and fix bugs in production faster"
  homepage "https://sessionmate.dev/"
  url "https://github.com/FilledStacks/session_mate/releases/download/v.0.2.0/sessionmate.tar.gz"
  sha256 "4ca5f3e2926ae85eeff61936380449124b2020435d7c8a3066530324711d9409"
  license "MIT"

  def install
    bin.install "sessionmate"
  end

  test do
    system "#{bin}/sessionmate"
  end
end
