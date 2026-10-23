class WhatToRun < Formula
  desc "Task picker for the commands you can never remember in a repository"
  homepage "https://github.com/zanza00/what-to-run"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.7.0/what-to-run_0.7.0_darwin_arm64.tar.gz"
      sha256 "f7cc2fd678e87fb30456a965b83c1ca3d98acf18177a6511650c51a21676aba5"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.7.0/what-to-run_0.7.0_darwin_amd64.tar.gz"
      sha256 "f73905e5fcfae5bcf7e8bc3019134d7465ec2f7a393d5249509443b6481b64de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.7.0/what-to-run_0.7.0_linux_arm64.tar.gz"
      sha256 "64d4a5a97d60b6329d49f4d8d2317b868b32700761ab8f9249e0696222a7b1f1"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.7.0/what-to-run_0.7.0_linux_amd64.tar.gz"
      sha256 "332cd25ba1c5b61a6e85580270f47a2d56ec43411f0822ca9976006054aa9139"
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
