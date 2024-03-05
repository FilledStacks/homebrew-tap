class Testsweets < Formula
  desc "The easiest way to write automated end-to-end tests for Flutter apps"
  homepage "https://testsweets.com"
  version "1.0.3"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-intel.tar.gz?alt=media&token=576c38c6-1f0f-4061-8d97-930fa11bbeb9"
      sha256 "9f75097d2a34a34534031248000cd7b15579fa08a79e9e157c109eaa25677518"
    end

    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-dist.tar.gz?alt=media&token=1225133f-a74a-4c6f-824f-88bc0e1b8cc5"
      sha256 "0a163555f221f351381dae8f0b7c5482bd1af4cec3ca72fce12d2e8a5e8e4939"
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
