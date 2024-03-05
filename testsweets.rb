class Testsweets < Formula
  desc "The easiest way to write automated end-to-end tests for Flutter apps"
  homepage "https://testsweets.com"
  version "1.0.3+1"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-intel.tar.gz?alt=media&token=576c38c6-1f0f-4061-8d97-930fa11bbeb9"
      sha256 "9f75097d2a34a34534031248000cd7b15579fa08a79e9e157c109eaa25677518"
    end

    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-dist.tar.gz?alt=media&token=912f210b-cfff-4f3c-8836-6a1868cea408"
      sha256 "73abd3cb2dab45a902dbd2843bbadf316bea1ffad77352f954b45dc85c71c679"
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
