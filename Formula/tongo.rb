class Tongo < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/drewzemke/tongo"
  license "GPL-3.0"
  version "0.15.4"

  on_macos do
    on_arm do
      url "https://github.com/drewzemke/tongo/releases/download/v#{version}/tongo-aarch64-apple-darwin.tar.gz"
      sha256 "6a6d38d3cda932e0c19de8dfcc188c7f0b9d7d439bc9dfca9b15ce2172f0de44"
    end

    on_intel do
      url "https://github.com/drewzemke/tongo/releases/download/v#{version}/tongo-x86_64-apple-darwin.tar.gz"
      sha256 "d4b3e90be5049a5c7b4eee338eb445a20f5bcb2c3a2421047fb69abe17fe47e0"
    end
  end

  def install
    bin.install "tongo"
  end

  test do
    assert_match "tongo #{version}", shell_output("#{bin}/tongo --version")
  end
end
