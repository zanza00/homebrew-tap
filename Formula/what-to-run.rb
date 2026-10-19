class WhatToRun < Formula
  desc "Task picker for the commands you can never remember in a repository"
  homepage "https://github.com/zanza00/what-to-run"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.3.1/what-to-run_0.3.1_darwin_arm64.tar.gz"
      sha256 "f8b0d81a38fcc7c0abdccc0408047e4c408e1ce6615f88d4cc5652bafda7682c"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.3.1/what-to-run_0.3.1_darwin_amd64.tar.gz"
      sha256 "a0afd909677c96c50c42dde508b1ca9833a57096b5f65822ab924277cf08dfde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.3.1/what-to-run_0.3.1_linux_arm64.tar.gz"
      sha256 "e6ea45567a80290c50cb1fdfe885064d0038d8442e2ad9e20bd792ee8187c5a2"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.3.1/what-to-run_0.3.1_linux_amd64.tar.gz"
      sha256 "7788501088c8b6a7befdd3ba3516da26c382ef8a5f33904b9e320227039816a0"
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
