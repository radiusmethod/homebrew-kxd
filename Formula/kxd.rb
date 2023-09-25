class Kxd < Formula
    ver = "v0.0.4"
    desc "Kubeconfig Switcher in Go"
    homepage "https://github.com/radiusmethod/kxd"
    url "https://github.com/radiusmethod/kxd/archive/v0.0.4.tar.gz"
    sha256 "b71380e300853900b7e619fe4aaebd603d78d1ca38fc9698ce3c4aedaa20a12c"
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
