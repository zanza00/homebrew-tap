class SourceFetch < Formula
  desc "Fetch dependency source code on demand into a local cache"
  homepage "https://github.com/zanza00/source-fetch"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.4.2/source-fetch_0.4.2_darwin_arm64.tar.gz"
      sha256 "4fe29ceb93c6d87e775e12bd4fb60e4a885988a2e8f0d9c11e835bf342edbdb1"
    end
    on_intel do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.4.2/source-fetch_0.4.2_darwin_amd64.tar.gz"
      sha256 "917b575aef00ca7668c144e3621544cda5ff494676a23d98dbac1fedf3ef98d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.4.2/source-fetch_0.4.2_linux_arm64.tar.gz"
      sha256 "74bf27368c26fb02afcfc009aac0afb3a6edda4314fb5b11644a8f694becf5e9"
    end
    on_intel do
      url "https://github.com/zanza00/source-fetch/releases/download/v0.4.2/source-fetch_0.4.2_linux_amd64.tar.gz"
      sha256 "5bc3885edcb88e083cd8b205ae066c91d223f86be8f24d4b699cdb1344b76f25"
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
