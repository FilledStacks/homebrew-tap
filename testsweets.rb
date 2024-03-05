class Testsweets < Formula
  desc "The easiest way to write automated end-to-end tests for Flutter apps"
  homepage "https://testsweets.com"
  version "1.0.4"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-intel.tar.gz?alt=media&token=576c38c6-1f0f-4061-8d97-930fa11bbeb9"
      sha256 "9f75097d2a34a34534031248000cd7b15579fa08a79e9e157c109eaa25677518"
    end

    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-dist.tar.gz?alt=media&token=ae9bed44-30b6-4c88-aabb-15c45cd061b1"
      sha256 "6f5b39b3ede2d715204bba8167bc40324073687250cb53bd0aa40212c2b3f02a"
    end
  end

  def install
    bin.install "testsweets"
    # Installs everyting under libexec
    # libexec.install Dir["*"]
    # bin.write_exec_script libexec/"testsweets"
  end

  test do
    system "#{bin}/testsweets"
  end
end
