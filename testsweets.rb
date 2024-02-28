class Testsweets < Formula
  desc "The easiest way to write automated end-to-end tests for Flutter apps"
  homepage "https://testsweets.com"
  version "1.0.0"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-dist.tar.gz?alt=media&token=c44d53b1-6cdc-4c6f-8175-c61769b0a39a"
      sha256 "4b84235fcbd08d90c729562650cefa0df7a19dccbc6d0181366cd077e41b4899"
    end

    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-dist.tar.gz?alt=media&token=c44d53b1-6cdc-4c6f-8175-c61769b0a39a"
      sha256 "4b84235fcbd08d90c729562650cefa0df7a19dccbc6d0181366cd077e41b4899"
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
