class Tongo < Formula
  desc "A TUI for MongoDB"
  homepage "https://github.com/drewzemke/tongo"
  license "GPL-3.0"
  version "0.15.1"

  on_macos do
    on_arm do
      url "https://github.com/drewzemke/tongo/releases/download/v#{version}/tongo-aarch64-apple-darwin.tar.gz"
      sha256 "21c87e33867761269e79add89261190da340fbe3fd18b5f405faa80920936db6"
    end

    on_intel do
      url "https://github.com/drewzemke/tongo/releases/download/v#{version}/tongo-x86_64-apple-darwin.tar.gz"
      sha256 "7faf3975bfee97876abd0f3bb03f8fa9ea34d97a17058acccaf60dbe8cbcd234"
    end
  end

  def install
    bin.install "tongo"
  end

  test do
    assert_match "tongo #{version}", shell_output("#{bin}/tongo --version")
  end
end
