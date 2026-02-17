class PostPushParty < Formula
  desc "Celebrate your git pushes!"
  homepage "https://github.com/drewzemke/post-push-party"
  license "GPL-3.0"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/drewzemke/post-push-party/releases/download/v#{version}/post-push-party-aarch64-apple-darwin.tar.gz"
      sha256 "2813587e2d77988056588d69b4d25db27559b8bcf9df1e8619e0cee7920bb240"
    end

    on_intel do
      url "https://github.com/drewzemke/post-push-party/releases/download/v#{version}/post-push-party-x86_64-apple-darwin.tar.gz"
      sha256 "b9f56738ae302762f260141d0190de5516d4aa8780bde15c64ffd1103ea1aedf"
    end
  end

  def install
    bin.install "party"
  end

  test do
    assert_match "party #{version}", shell_output("#{bin}/party --version")
  end
end
