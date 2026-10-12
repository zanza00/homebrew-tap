#!/usr/bin/env python3
"""Generate the formula from a published source-fetch release and its checksums."""

import json
from pathlib import Path
import re
import subprocess


def gh(*args):
    return subprocess.check_output(["gh", *args], text=True)


def render(release, checksums):
    tag = release["tag_name"]
    if release["draft"] or release["prerelease"] or not re.fullmatch(r"v\d+\.\d+\.\d+", tag):
        raise ValueError("Expected a published stable vX.Y.Z release")
    version = tag[1:]
    hashes = {}
    for line in checksums.splitlines():
        digest, name = line.split()
        if not re.fullmatch(r"[0-9a-f]{64}", digest):
            raise ValueError(f"Invalid SHA-256 for {name}")
        if name in hashes:
            raise ValueError(f"Duplicate checksum for {name}")
        hashes[name] = digest
    assets = {asset["name"] for asset in release["assets"] if asset["state"] == "uploaded"}
    lines = [
        "class SourceFetch < Formula",
        '  desc "Fetch dependency source code on demand into a local cache"',
        '  homepage "https://github.com/zanza00/source-fetch"',
        f'  version "{version}"',
        '  license "MIT"',
    ]
    for platform, os_name in (("macos", "darwin"), ("linux", "linux")):
        lines.extend(["", f"  on_{platform} do"])
        for arch, go_arch in (("arm", "arm64"), ("intel", "amd64")):
            name = f"source-fetch_{version}_{os_name}_{go_arch}.tar.gz"
            if name not in assets or name not in hashes:
                raise ValueError(f"Missing release asset or checksum: {name}")
            url = f"https://github.com/zanza00/source-fetch/releases/download/{tag}/{name}"
            lines.extend([
                f"    on_{arch} do",
                f'      url "{url}"',
                f'      sha256 "{hashes[name]}"',
                "    end",
            ])
        lines.append("  end")
    lines.extend([
        "", '  depends_on "git"', "",
        "  def install", '    bin.install "source-fetch"', "  end", "",
        "  test do",
        '    assert_equal version.to_s, shell_output("#{bin}/source-fetch version").strip',
        '    assert_match "peek", shell_output("#{bin}/source-fetch --help")',
        "  end", "end", "",
    ])
    return "\n".join(lines)


def main():
    release = json.loads(gh("api", "repos/zanza00/source-fetch/releases/latest"))
    checksum_asset = next(asset for asset in release["assets"] if asset["name"] == "checksums.txt")
    checksums = gh("api", checksum_asset["url"], "-H", "Accept: application/octet-stream")
    formula = render(release, checksums)
    destination = Path(__file__).resolve().parents[1] / "Formula" / "source-fetch.rb"
    destination.write_text(formula)
    print(f"Formula matches {release['tag_name']}")


if __name__ == "__main__":
    main()
