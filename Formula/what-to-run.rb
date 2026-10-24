class WhatToRun < Formula
  desc "Task picker for the commands you can never remember in a repository"
  homepage "https://github.com/zanza00/what-to-run"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.8.0/what-to-run_0.8.0_darwin_arm64.tar.gz"
      sha256 "ec0d2f8d76ae68db8316d3c2c6e4f0607715c2a2f70f563afd54a1c257238cd7"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.8.0/what-to-run_0.8.0_darwin_amd64.tar.gz"
      sha256 "7a6da9c9dd499c23d92973f13e5b87a19b4a0b8d1d4961eab71bf83d5bcf4c97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.8.0/what-to-run_0.8.0_linux_arm64.tar.gz"
      sha256 "379ed5c0838978e7d3699bb0e4c9e144611a31ccf3598dd660db0d20c6f15cff"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.8.0/what-to-run_0.8.0_linux_amd64.tar.gz"
      sha256 "a0f46a7e7026d01911f94d080382a7e5ab461cb0881efe8f917b54f026acf905"
    end
  end

  def install
    bin.install "wtr"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/wtr --version").split.last
    assert_match "classic", shell_output("#{bin}/wtr --list-themes")
  end
end
