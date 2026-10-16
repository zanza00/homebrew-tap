class SourceFetch < Formula
  desc "Fetch dependency source code on demand into a local cache"
  homepage "https://github.com/zanza00/source-fetch"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.5.0/source-fetch_0.5.0_darwin_arm64.tar.gz"
      sha256 "63c1a892fa7b2ab3d0db793efab86a28438845cf31edcfa6c8f79ac26e0e8d84"
    end
    on_intel do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.5.0/source-fetch_0.5.0_darwin_amd64.tar.gz"
      sha256 "6a8a2a8a4843d1d3afa9fed35ec614382f04483c9fde8c00c6dcc82dac002c0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.5.0/source-fetch_0.5.0_linux_arm64.tar.gz"
      sha256 "a19d05c5b3565a2facc540d9d8954f56edea2b3124ec3573d337dab25cbfefe9"
    end
    on_intel do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.5.0/source-fetch_0.5.0_linux_amd64.tar.gz"
      sha256 "0daa5999119c3335dac34b46c3a0528d665c89d13c8a2954e455a9653ac4a5eb"
    end
  end

  depends_on "git"

  def install
    bin.install "source-fetch"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/source-fetch version").strip
    assert_match "peek", shell_output("#{bin}/source-fetch --help 2>&1")
  end
end
