class PostPushParty < Formula
  desc "Celebrate your git pushes!"
  homepage "https://github.com/drewzemke/post-push-party"
  license "GPL-3.0"
  version "0.1.11"

  on_macos do
    on_arm do
      url "https://github.com/drewzemke/post-push-party/releases/download/v#{version}/post-push-party-aarch64-apple-darwin.tar.gz"
      sha256 "8af61877a3adfd8de7667ffde8aecd59af7cbb7bb1b5db005807568f82cb0c12"
    end

    on_intel do
      url "https://github.com/drewzemke/post-push-party/releases/download/v#{version}/post-push-party-x86_64-apple-darwin.tar.gz"
      sha256 "b07fa767939f3e44ef263867eef883bb5ae4e76f8ab7160f221ac7b1966620e5"
    end
  end

  def install
    bin.install "party"
  end

  test do
    assert_match "party #{version}", shell_output("#{bin}/party --version")
  end
end
