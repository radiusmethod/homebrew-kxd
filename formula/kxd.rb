class Kxd < Formula
    ver = "0.0.1"
    desc "Kubeconfig Switcher in Go"
    homepage "https://github.com/radiusmethod/kxd"
    url "https://github.com/radiusmethod/kxd/archive/v0.0.1.tar.gz"
    sha256 "ff51aa5d4545d046d86330d0eb1ba60ab65e398286bde0013bfe4d743b2a734a"
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
