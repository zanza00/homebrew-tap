class SourceFetch < Formula
  desc "Fetch dependency source code on demand into a local cache"
  homepage "https://github.com/zanza00/source-fetch"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.4.4/source-fetch_0.4.4_darwin_arm64.tar.gz"
      sha256 "1d24fa0f6d52e2af2d1870256c2f4340771c61142a63a4f2f41408043c2853bc"
    end
    on_intel do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.4.4/source-fetch_0.4.4_darwin_amd64.tar.gz"
      sha256 "cb0a941cc63ed8235ca9d7749521a4d059fad457adb2bcf72161a358be2a36f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.4.4/source-fetch_0.4.4_linux_arm64.tar.gz"
      sha256 "9d1b5b5788feb8ee1b83c5c86306ee23db4ed840d898d158c6f7bab6423452d5"
    end
    on_intel do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.4.4/source-fetch_0.4.4_linux_amd64.tar.gz"
      sha256 "73835347e678ee205edbc6ee7dda5dfcea2b1f3cf0403d000e754720ba93724a"
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
