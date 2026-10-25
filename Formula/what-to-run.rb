class WhatToRun < Formula
  desc "Task picker for the commands you can never remember in a repository"
  homepage "https://github.com/zanza00/what-to-run"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.9.0/what-to-run_0.9.0_darwin_arm64.tar.gz"
      sha256 "3545d706659962e62e21f0fbf522299ff8aec0e525cfe86b1effa31da39ff38f"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.9.0/what-to-run_0.9.0_darwin_amd64.tar.gz"
      sha256 "fc53272ed1ab6820ab23b3a70464c45fd95da1ce5edce3abbb5c9ea021f866b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.9.0/what-to-run_0.9.0_linux_arm64.tar.gz"
      sha256 "13c54295afa949b8c7a931dda962e25bc3db16a6460a72893f90e7bbe35460a7"
    end
    on_intel do
      url "https://github.com/zanza00/what-to-run/releases/download/v0.9.0/what-to-run_0.9.0_linux_amd64.tar.gz"
      sha256 "ad664e776ff3d2eaaadd3d4d294472c689030bd9a62262849af4615d711e7129"
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
