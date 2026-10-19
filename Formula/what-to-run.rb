class WhatToRun < Formula
  desc "Task picker for the commands you can never remember in a repository"
  homepage "https://github.com/zanza00/what-to-run"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.5.0/what-to-run_0.5.0_darwin_arm64.tar.gz"
      sha256 "b80a7a5ba3ecb6f17cefdb137c8d75d06aa4f6820b26ae61e9aa46bcb1c082b8"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.5.0/what-to-run_0.5.0_darwin_amd64.tar.gz"
      sha256 "9bc462eed9a9a09f58d5047fce823e319dce5fb529b5c4185972c1c8ef6d99da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.5.0/what-to-run_0.5.0_linux_arm64.tar.gz"
      sha256 "8de22da0b1066dc210811b8a237241aa9747e641405674202dc6ee1ab942d8b1"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.5.0/what-to-run_0.5.0_linux_amd64.tar.gz"
      sha256 "9d1fead3686e2f157092698985d7fa4aa085e14cb71631bae09b4da6efec835c"
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
