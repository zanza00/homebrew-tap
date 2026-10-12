class SourceFetch < Formula
  desc "Fetch dependency source code on demand into a local cache"
  homepage "https://github.com/zanza00/source-fetch"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.4.1/source-fetch_0.4.1_darwin_arm64.tar.gz"
      sha256 "2429c4ca324935206b3a8c56fd97513787219c5540e4e8d97594aada51f10988"
    end
    on_intel do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.4.1/source-fetch_0.4.1_darwin_amd64.tar.gz"
      sha256 "63164f4eb6df19aad9f42aa4412386d6bf962da204054e12d05dca1b9015c985"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.4.1/source-fetch_0.4.1_linux_arm64.tar.gz"
      sha256 "33e09db66fca34a6dc106dc8d2a0389353a80214c0a204fb216d2d47fea1ff4b"
    end
    on_intel do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.4.1/source-fetch_0.4.1_linux_amd64.tar.gz"
      sha256 "ae5b452698d2e4e9ecb9d5aee213807fba33752fedda4682af37e87029902d4a"
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
