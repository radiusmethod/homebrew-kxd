class Kxd < Formula
    ver = "0.0.1"
    desc "Kubeconfig Switcher in Go"
    homepage "https://github.com/radiusmethod/kxd"
    url "https://github.com/radiusmethod/kxd/archive/v0.0.2.tar.gz"
    sha256 "8c9e3107c26073f2e7b8a4999d96eedd6c74c3d8803d49cf45dfcc3c057b3227"
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
