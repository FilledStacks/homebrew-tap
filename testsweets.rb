class Testsweets < Formula
  desc "The easiest way to write automated end-to-end tests for Flutter apps"
  homepage "https://testsweets.com"
  version "1.0.0"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-dist.tar.gz?alt=media&token=a5b51656-51c6-41a0-94b9-b7c5ecd7a13f"
      sha256 "17fde419f25d7178e0e6efb7a51bc5658c7daeff5c1cbbccd4fc250bdaf06c81"
    end

    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-dist.tar.gz?alt=media&token=a5b51656-51c6-41a0-94b9-b7c5ecd7a13f"
      sha256 "17fde419f25d7178e0e6efb7a51bc5658c7daeff5c1cbbccd4fc250bdaf06c81"
    end
  end

  def install
    # Installs everyting under libexec
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"testsweets"
  end

  test do
    system "#{bin}/testsweets"
  end
end
