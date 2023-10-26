class Kxd < Formula
    ver = "v0.0.8"
    desc "Kubeconfig Switcher in Go"
    homepage "https://github.com/radiusmethod/kxd"
    url "https://github.com/radiusmethod/kxd/archive/v0.0.8.tar.gz"
    sha256 "66a2b48f79b41c151cacc990d3c24c0a141afdc4a7b01785a312e34519965cbe"
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
