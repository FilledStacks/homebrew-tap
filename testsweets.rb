class Testsweets < Formula
  desc "The easiest way to write automated end-to-end tests for Flutter apps"
  homepage "https://testsweets.com"
  version "1.0.1"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-x86.tar.gz?alt=media&token=35fbe80f-628e-40b2-b77e-f51d647d9b15"
      sha256 "7b22bd5b63a06d6a51dce9515a552c5df63ca645cbe362011673cc50be4fb7c3"
    end

    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-dist.tar.gz?alt=media&token=09fef558-2256-489f-9917-4c4c8fc508cd"
      sha256 "960a99e2e2dd904de65192d16e234378863aaf641587d9ac224fd3bbbe3db7cb"
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
