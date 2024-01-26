class Kxd < Formula
    ver = "v0.1.0"
    desc "Kubeconfig Switcher in Go"
    homepage "https://github.com/radiusmethod/kxd"
    url "https://github.com/radiusmethod/kxd/archive/v0.1.0.tar.gz"
    sha256 "12f066e13940ddfcf22bd6cd73e460f04a3401ae3b1e1eea90a36b1dd40d7c33"
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
