class PostPushParty < Formula
  desc "Celebrate your git pushes!"
  homepage "https://github.com/drewzemke/post-push-party"
  license "GPL-3.0"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://github.com/drewzemke/post-push-party/releases/download/v#{version}/post-push-party-aarch64-apple-darwin.tar.gz"
      sha256 "c6708fa53524988801fa1bd104f34ad7c485312d1392e52b85ed7282207a21be"
    end

    on_intel do
      url "https://github.com/drewzemke/post-push-party/releases/download/v#{version}/post-push-party-x86_64-apple-darwin.tar.gz"
      sha256 "eb22c7d2aa72fd3655660d03fbee0eda2c6a014d71f9d23ea6450a7a68e76997"
    end
  end

  def install
    bin.install "party"
  end

  test do
    assert_match "party #{version}", shell_output("#{bin}/party --version")
  end
end
