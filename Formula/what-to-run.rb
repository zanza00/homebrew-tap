class WhatToRun < Formula
  desc "Task picker for the commands you can never remember in a repository"
  homepage "https://github.com/zanza00/what-to-run"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.1.1/what-to-run_0.1.1_darwin_arm64.tar.gz"
      sha256 "107339fd7715ba12e7389617cb7a6590ca360ddde4e6fccf0e369bb33678a218"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.1.1/what-to-run_0.1.1_darwin_amd64.tar.gz"
      sha256 "352dc763ed0e3b4afe28c89ada5866f22edd0b87a7d13f58b9ece0103d4885ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.1.1/what-to-run_0.1.1_linux_arm64.tar.gz"
      sha256 "575f542e869c2922a99dd3e3781448c03de920348d807a636a03f25d5e58cd6a"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.1.1/what-to-run_0.1.1_linux_amd64.tar.gz"
      sha256 "1ca58245b6a4631e0b66853fc2067bb5e588fa6768973bb7b98e5db49f6cd6c2"
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
