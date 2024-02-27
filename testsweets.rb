class Testsweets < Formula
  desc "The easiest way to write automated end-to-end tests for Flutter apps"
  homepage "https://testsweets.com"
  version "1.0.0"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-dist.tar.gz?alt=media&token=97ca7490-90ff-44b9-a1ab-c6b553b45ed5"
      sha256 "39c01adf24d933037a377f3e65762e78d117133840dacf2976a5d88e4069c19b"
    end

    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-dist.tar.gz?alt=media&token=97ca7490-90ff-44b9-a1ab-c6b553b45ed5"
      sha256 "39c01adf24d933037a377f3e65762e78d117133840dacf2976a5d88e4069c19b"
    end
  end

  def install
    bin.install "testsweets"
  end

  test do
    system "#{bin}/testsweets"
  end
end
