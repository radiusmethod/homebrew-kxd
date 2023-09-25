class Kxd < Formula
    ver = "v0.0.5"
    desc "Kubeconfig Switcher in Go"
    homepage "https://github.com/radiusmethod/kxd"
    url "https://github.com/radiusmethod/kxd/archive/v0.0.5.tar.gz"
    sha256 "eee0d2c363b416bccc1beedbc8d4629d3691dd4079a4a542e19f6b378862d903"
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
