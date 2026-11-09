class Skp < Formula
  desc "Git-native Agent Skill stack switcher"
  homepage "https://github.com/zanza00/skp"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanza00/skp/releases/download/v0.1.0/skp_0.1.0_darwin_arm64.tar.gz"
      sha256 "5931af5a1f703e65c2b3b9ce9b984294d93d3bc1993d8931b90d346ba9fff5fc"
    end
    on_intel do
      url "https://github.com/zanza00/skp/releases/download/v0.1.0/skp_0.1.0_darwin_amd64.tar.gz"
      sha256 "5f3016b9056056fd84808b1b188b868741a31ec9bbf31ae1dd19b372f716b35f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanza00/skp/releases/download/v0.1.0/skp_0.1.0_linux_arm64.tar.gz"
      sha256 "28e6001950e23961f3fb7ef4a10704181b9c3d5c06df82e51efb2b3307543f49"
    end
    on_intel do
      url "https://github.com/zanza00/skp/releases/download/v0.1.0/skp_0.1.0_linux_amd64.tar.gz"
      sha256 "38fa5bffe4c2f2fbd05840796280aa5b04b9aa5408435fe218ae3c2b6475deb6"
    end

    depends_on "git"
  end

  def install
    bin.install "skp"
  end

  test do
    assert_equal "skp", shell_output("#{bin}/skp --version").lines.first.strip
    assert_match "use", shell_output("#{bin}/skp --help 2>&1")
  end
end
