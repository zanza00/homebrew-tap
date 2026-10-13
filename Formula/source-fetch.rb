class SourceFetch < Formula
  desc "Fetch dependency source code on demand into a local cache"
  homepage "https://github.com/zanza00/source-fetch"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.4.3/source-fetch_0.4.3_darwin_arm64.tar.gz"
      sha256 "f5a175adc1fbcd8beda09a8e0fdc1382bbafe1571f3cf9006ba722178ffcca5e"
    end
    on_intel do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.4.3/source-fetch_0.4.3_darwin_amd64.tar.gz"
      sha256 "818627bab7b1dd5d41191613f0221fe6a4cd7e82a572c6c972eafe4e93742995"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.4.3/source-fetch_0.4.3_linux_arm64.tar.gz"
      sha256 "572554331fe66ea0a51a52f4afc9165009e62bb2cd8891b585dc822d5043929a"
    end
    on_intel do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.4.3/source-fetch_0.4.3_linux_amd64.tar.gz"
      sha256 "990ce792d2c1fced4ce676270e60bc6525a7334977cb94ce117d38977a7065c3"
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
