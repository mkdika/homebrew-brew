class Lff < Formula
  desc "Simple and straightforward large files finder utility for *nix, optimize for human."
  homepage "https://mkdika.github.io/"
  url "https://github.com/mkdika/lff-cr/archive/v0.1.1.tar.gz"
  sha256 "99d0b038cc09062dea3de0809bea05fa7816a948489d728b0e6816548ba64198"

  depends_on "crystal" => :build

  def install
    mkdir bin
    system "shards", "build", "--production", "--release"
    system "strip", "./bin/lff"
    cp "./bin/lff", bin
  end

  test do
    assert_equal "lff version 0.1.1", pipe_output("#{bin}/lff -v")
  end
end
