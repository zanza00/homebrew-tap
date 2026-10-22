class WhatToRun < Formula
  desc "Task picker for the commands you can never remember in a repository"
  homepage "https://github.com/zanza00/what-to-run"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.6.0/what-to-run_0.6.0_darwin_arm64.tar.gz"
      sha256 "e8fb8f78fd92e2a25bcf148a4d3108a39d2104f5f2ddfa59ec1917260f6062d9"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.6.0/what-to-run_0.6.0_darwin_amd64.tar.gz"
      sha256 "9948279d882684755ac7863bf35c77cf435150b5f5b2fa56d296bb79ea6b3119"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.6.0/what-to-run_0.6.0_linux_arm64.tar.gz"
      sha256 "63e7d3f62f7aa8a06e61e2476192b19eac37431ece34d69f8df669869459cfa8"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.6.0/what-to-run_0.6.0_linux_amd64.tar.gz"
      sha256 "19d32fcb56ad566cec3703622afb2fc9a49ee91b8000ccae92911855423e658d"
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
