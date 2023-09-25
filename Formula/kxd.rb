class Kxd < Formula
    ver = "v0.0.4"
    desc "Kubeconfig Switcher in Go"
    homepage "https://github.com/radiusmethod/kxd"
    url "https://github.com/radiusmethod/kxd/archive/v0.0.4.tar.gz"
    sha256 "ae332eadde18c0136afdbffd9a5631ea1d4d50e71ac3ff4af1b4e156dce66e9f"
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
