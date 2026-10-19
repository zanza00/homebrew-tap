class WhatToRun < Formula
  desc "Task picker for the commands you can never remember in a repository"
  homepage "https://github.com/zanza00/what-to-run"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.3.0/what-to-run_0.3.0_darwin_arm64.tar.gz"
      sha256 "2de79c9a8e95468e69d57e0c6803da4cc14a7ce8f9baeef4293ac8c298a48b83"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.3.0/what-to-run_0.3.0_darwin_amd64.tar.gz"
      sha256 "732dcd59735fbbbaa1184ec674d88a04811a3a5da67c84675613dded143fb81b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.3.0/what-to-run_0.3.0_linux_arm64.tar.gz"
      sha256 "a2de7109eb6dad1fb32b990fecd4dbe89892122a1e924e10f25767fdee6ee34f"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.3.0/what-to-run_0.3.0_linux_amd64.tar.gz"
      sha256 "f084504367ddd6a074e0e5a91ca4a5d859c9ce71bed58c5cb655eeb481871030"
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
