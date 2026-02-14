class PostPushParty < Formula
  desc "Celebrate your git pushes!"
  homepage "https://github.com/drewzemke/post-push-party"
  license "GPL-3.0"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/drewzemke/post-push-party/releases/download/v#{version}/post-push-party-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/drewzemke/post-push-party/releases/download/v#{version}/post-push-party-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "party"
  end

  test do
    assert_match "party #{version}", shell_output("#{bin}/party --version")
  end
end
