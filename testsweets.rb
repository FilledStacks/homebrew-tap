class Testsweets < Formula
  desc "The easiest way to write automated end-to-end tests for Flutter apps"
  homepage "https://testsweets.com"
  version "1.0.3"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-dist.tar.gz?alt=media&token=9482ee49-ae6b-4578-a817-142f89143253"
      sha256 "de6881dcee9cb6c8a17af65c7ead4a6896ac82bc22868ea3e588f72f397a0236"
    end

    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-dist.tar.gz?alt=media&token=9482ee49-ae6b-4578-a817-142f89143253"
      sha256 "de6881dcee9cb6c8a17af65c7ead4a6896ac82bc22868ea3e588f72f397a0236"
    end
  end

  def install
    bin.install "testsweets"
  end

  test do
    system "#{bin}/testsweets"
  end
end
