class Kxd < Formula
    ver = "v0.0.3"
    desc "Kubeconfig Switcher in Go"
    homepage "https://github.com/radiusmethod/kxd"
    url "https://github.com/radiusmethod/kxd/archive/v0.0.3.tar.gz"
    sha256 "4c5e69a6969d410db27d41003ad477dbd1bb429854c16f19e0f837bf33df03dd"
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
