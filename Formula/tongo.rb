class Tongo < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/drewzemke/tongo"
  license "GPL-3.0"
  version "0.15.5"

  on_macos do
    on_arm do
      url "https://github.com/drewzemke/tongo/releases/download/v#{version}/tongo-aarch64-apple-darwin.tar.gz"
      sha256 "263948287a01d785e640becab9fecb5e905f1a570a53120acf9d5f2527847195"
    end

    on_intel do
      url "https://github.com/drewzemke/tongo/releases/download/v#{version}/tongo-x86_64-apple-darwin.tar.gz"
      sha256 "6d97d765e59c07a6dd5308d3ac2b2b5c1d15fbf9f8a6339705d3fd717dedb23b"
    end
  end

  def install
    bin.install "tongo"
  end

  test do
    assert_match "tongo #{version}", shell_output("#{bin}/tongo --version")
  end
end
