class PostPushParty < Formula
  desc "Celebrate your git pushes!"
  homepage "https://github.com/drewzemke/post-push-party"
  license "GPL-3.0"
  version "0.1.9"

  on_macos do
    on_arm do
      url "https://github.com/drewzemke/post-push-party/releases/download/v#{version}/post-push-party-aarch64-apple-darwin.tar.gz"
      sha256 "bfbbf7c40164913f2a742559a14b7373fa272e9c7c9636eb8c9e6097521a8bc3"
    end

    on_intel do
      url "https://github.com/drewzemke/post-push-party/releases/download/v#{version}/post-push-party-x86_64-apple-darwin.tar.gz"
      sha256 "4efee7da28654b25e10d71714b53055e9ad2c6915453969c359455dbd156d1dd"
    end
  end

  def install
    bin.install "party"
  end

  test do
    assert_match "party #{version}", shell_output("#{bin}/party --version")
  end
end
