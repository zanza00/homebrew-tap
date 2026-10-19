class WhatToRun < Formula
  desc "Task picker for the commands you can never remember in a repository"
  homepage "https://github.com/zanza00/what-to-run"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.3.1/what-to-run_0.3.1_darwin_arm64.tar.gz"
      sha256 "2b28e5f09052bb4dd02afb085215736fb9274bf501300d01bafcaf585a1e3a83"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.3.1/what-to-run_0.3.1_darwin_amd64.tar.gz"
      sha256 "531932fe4cc4ce3113d751d4f73b32dcca9bdf6dc2a609ffceb502140c5c2152"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.3.1/what-to-run_0.3.1_linux_arm64.tar.gz"
      sha256 "8ee9b6a7329c3639304c74da69495062956de144414542a4fb1ac95d0f5d8771"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.3.1/what-to-run_0.3.1_linux_amd64.tar.gz"
      sha256 "273ef81d3f0665132dc28018216d59b332ab271ddd48dc0e451787ccae1b0fb8"
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
