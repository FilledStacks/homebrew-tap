class Testsweets < Formula
  desc "The easiest way to write automated end-to-end tests for Flutter apps"
  homepage "https://testsweets.com"
  version "1.0.0"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-dist.tar.gz?alt=media&token=80a8e299-3bfe-4445-b50f-cd202e7eeb4a"
      sha256 "846eaa6022be7ffd20370446f30c3825fafeb644a6507ac620d867ed180d8a87"
    end

    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-dist.tar.gz?alt=media&token=80a8e299-3bfe-4445-b50f-cd202e7eeb4a"
      sha256 "846eaa6022be7ffd20370446f30c3825fafeb644a6507ac620d867ed180d8a87"
    end
  end

  def install
    bin.install "testsweets"
  end

  test do
    system "#{bin}/testsweets"
  end
end
