class Testsweets < Formula
  desc "The easiest way to write automated end-to-end tests for Flutter apps"
  homepage "https://testsweets.com"
  version "1.0.5"
  version_scheme 1
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/testsweets-38348.appspot.com/o/testsweets-intel.tar.gz?alt=media&token=df133ab0-855d-489e-8198-90ee82c319c0"
      sha256 "39ea5ba10067abd0ff3be1c387dd860559d004b165e941b51c257628e43521b3"
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
