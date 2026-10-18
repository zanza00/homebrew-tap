class WhatToRun < Formula
  desc "Task picker for the commands you can never remember in a repository"
  homepage "https://github.com/zanza00/what-to-run"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.1.0/what-to-run_0.1.0_darwin_arm64.tar.gz"
      sha256 "6e1af086a64a7db701154f392ba685242d2950b71941a1938c5fbe5441c00e74"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.1.0/what-to-run_0.1.0_darwin_amd64.tar.gz"
      sha256 "a344c1de6221f6a381329bcbf6ba87275cad613fb54e1f0de97f3e507ca0dfa5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.1.0/what-to-run_0.1.0_linux_arm64.tar.gz"
      sha256 "6523140e13e7176f4ed79ab07744ebf2ad7015c992ece8f7e0b0c1aacd88dedc"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.1.0/what-to-run_0.1.0_linux_amd64.tar.gz"
      sha256 "922f12afa7e88e7f267d50c100466c35e9422fd946aa606df9b316979fbdb30d"
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
