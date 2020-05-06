class Lff < Formula
  desc "Simple and straightforward large files finder utility for *nix, optimize for human."
  homepage "https://mkdika.github.io/"
  url "https://github.com/mkdika/lff-cr/archive/v0.1.0.tar.gz"
  sha256 "676ad6ac7783b1df8c27cb118debadfe16a972ed3ef6d7d9583e1eaced48f149"

  depends_on "crystal" => :build

  def install
    mkdir bin
    system "shards", "build", "--production", "--release"
    system "strip", "./bin/lff"
    cp "./bin/lff", bin
  end

  test do
    assert_equal "lff version 0.1.0", pipe_output("#{bin}/lff -v")
  end
end
