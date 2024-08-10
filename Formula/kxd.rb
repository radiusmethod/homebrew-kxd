class Kxd < Formula
    ver = "v0.1.3"
    desc "Kubeconfig Switcher in Go"
    homepage "https://github.com/radiusmethod/kxd"
    url "https://github.com/radiusmethod/kxd/archive/refs/tags/v0.1.3.tar.gz"
    sha256 "14bb9d75f92a0efbb3ebf01a94c9f68cea3cf8d81a7446d3b210fe1b504e9fde"
    license "MIT"
    head "https://github.com/radiusmethod/kxd.git", branch: "main", :tag => ver
    version ver

    depends_on "go" => :build

    def install
        system "make", "install", "BINDIR=#{bin}"
    end

    test do
        system "true"
    end
end
