class Tongo < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/drewzemke/tongo"
  license "GPL-3.0"
  version "0.15.6"

  on_macos do
    on_arm do
      url "https://github.com/drewzemke/tongo/releases/download/v#{version}/tongo-aarch64-apple-darwin.tar.gz"
      sha256 "1ba2e459d4f43acfdd08513d79ee05bb536bbd430f5795330307d0411e3756b2"
    end

    on_intel do
      url "https://github.com/drewzemke/tongo/releases/download/v#{version}/tongo-x86_64-apple-darwin.tar.gz"
      sha256 "e9e8fd6722e6c28e5ffd3b67bb33bf7e0d850c85bffd82111321d613ba541712"
    end
  end

  def install
    bin.install "tongo"
  end

  test do
    assert_match "tongo #{version}", shell_output("#{bin}/tongo --version")
  end
end
