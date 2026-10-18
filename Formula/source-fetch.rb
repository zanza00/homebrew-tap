class SourceFetch < Formula
  desc "Fetch dependency source code on demand into a local cache"
  homepage "https://github.com/zanza00/source-fetch"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.5.1/source-fetch_0.5.1_darwin_arm64.tar.gz"
      sha256 "4c6124aaa02b714802f5189fecf42b444cae4cca656b0ea6a0bc05fb6f47c72b"
    end
    on_intel do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.5.1/source-fetch_0.5.1_darwin_amd64.tar.gz"
      sha256 "ca61085cd367452e8fd013175e0143e9e0e0991a591df375fb368f8facbd7fb1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.5.1/source-fetch_0.5.1_linux_arm64.tar.gz"
      sha256 "321957ad1f796c47843927f7fb6f06607016d79a561d4369f950d02ae78a014b"
    end
    on_intel do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.5.1/source-fetch_0.5.1_linux_amd64.tar.gz"
      sha256 "34c3327add5e251233a680b503cc6186fa0590e0b1fc0aa34a0c550fce95b2dd"
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
