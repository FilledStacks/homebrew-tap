class Testsweets < Formula
  desc "The easiest way to write automated end-to-end tests for Flutter apps"
  homepage "https://testsweets.com"
  version "1.0.2"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-dist.tar.gz?alt=media&token=661aec0b-7505-4bf5-8ad1-09109871c803"
      sha256 "2350e0b56ee84f6d95acd9e6568bbd1899a129f7429cc468b8ca4d3a299c6ade"
    end

    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-dist.tar.gz?alt=media&token=661aec0b-7505-4bf5-8ad1-09109871c803"
      sha256 "2350e0b56ee84f6d95acd9e6568bbd1899a129f7429cc468b8ca4d3a299c6ade"
    end
  end

  def install
    bin.install "testsweets"
  end

  test do
    system "#{bin}/testsweets"
  end
end
