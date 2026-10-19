class WhatToRun < Formula
  desc "Task picker for the commands you can never remember in a repository"
  homepage "https://github.com/zanza00/what-to-run"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.2.0/what-to-run_0.2.0_darwin_arm64.tar.gz"
      sha256 "8700ad45046bed7280c8ecbd1f2931af8b924d7e4d3217f26ecd0bbf67d4b887"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.2.0/what-to-run_0.2.0_darwin_amd64.tar.gz"
      sha256 "584563ed0101f3a7402a43908732b0545346b3b1f6035fab10a585c714ae540f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.2.0/what-to-run_0.2.0_linux_arm64.tar.gz"
      sha256 "719ffdabc3f313c15880c56150c76578921ec5a2d42f5a14d7794a5be2a06fe4"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.2.0/what-to-run_0.2.0_linux_amd64.tar.gz"
      sha256 "6d3f8a1d145bb6455d60c59c993b442ddc025fae8b61a11ad80c48c994ff8cbc"
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
