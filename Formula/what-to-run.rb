class WhatToRun < Formula
  desc "Task picker for the commands you can never remember in a repository"
  homepage "https://github.com/zanza00/what-to-run"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.4.0/what-to-run_0.4.0_darwin_arm64.tar.gz"
      sha256 "f794049e870a89560947dd6f796871fcca605d3d1e442858e6c84a78bf161e3a"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.4.0/what-to-run_0.4.0_darwin_amd64.tar.gz"
      sha256 "6ee6f088afbccacc65e8511050ad0dbb518a9bae7aeb22cc43d191e3fce503c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.4.0/what-to-run_0.4.0_linux_arm64.tar.gz"
      sha256 "bb441a1cb9774d80d721a001162ee1d31259456bb0229275509a8eb349d8c5e2"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.4.0/what-to-run_0.4.0_linux_amd64.tar.gz"
      sha256 "ba4e84b6edc236cc473f95d5508979cbcae905e94884761c436443237d1b5f9c"
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
