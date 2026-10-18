class WhatToRun < Formula
  desc "Task picker for the commands you can never remember in a repository"
  homepage "https://github.com/zanza00/what-to-run"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.1.2/what-to-run_0.1.2_darwin_arm64.tar.gz"
      sha256 "2a819b399db69e135b867cde98b07c9912849f9f11815f77fb23f410f0f698c4"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.1.2/what-to-run_0.1.2_darwin_amd64.tar.gz"
      sha256 "33a3832b9a01d17548bfcebff126c39f0a30c7e7c6d5a0e0a21acf6e41ea4848"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.1.2/what-to-run_0.1.2_linux_arm64.tar.gz"
      sha256 "3409d6bb293baf5f36b890feeb4c4ee557466339655126f6425a599cc0bfb3d1"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.1.2/what-to-run_0.1.2_linux_amd64.tar.gz"
      sha256 "5c85a3de5f67a4460231de26c3b3c190791005fcce11af7e84af9f84dc659d8e"
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
