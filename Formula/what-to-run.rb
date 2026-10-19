class WhatToRun < Formula
  desc "Task picker for the commands you can never remember in a repository"
  homepage "https://github.com/zanza00/what-to-run"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.3.1/what-to-run_0.3.1_darwin_arm64.tar.gz"
      sha256 "3f4946612e48ab8b3b1418b2e141d292ece984a999ca41a4608477f8dbfd2469"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.3.1/what-to-run_0.3.1_darwin_amd64.tar.gz"
      sha256 "e6a444f581a12a80ab7731fcf65d3373055a7e2ee09bc708af08774b3a227109"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.3.1/what-to-run_0.3.1_linux_arm64.tar.gz"
      sha256 "dd3eca84bc7a707c1e977af3ed32756251198929fc0fbd1f4b09a45cda6816a0"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.3.1/what-to-run_0.3.1_linux_amd64.tar.gz"
      sha256 "2c8940d5f8ebd4b56656cdd379660156daac790d6370a5e674ad34943d76bdfb"
    end
  end

  def install
    bin.install "wtr"
    bin.install "what-to-run"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/wtr --version").split.last
    assert_match "classic", shell_output("#{bin}/what-to-run --list-themes")
  end
end
