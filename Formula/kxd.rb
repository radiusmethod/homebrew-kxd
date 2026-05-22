class Kxd < Formula
    ver = "v0.1.4"
    desc "Kubeconfig Switcher in Go"
    homepage "https://github.com/radiusmethod/kxd"
    url "https://github.com/radiusmethod/kxd/archive/refs/tags/v0.1.4.tar.gz"
    sha256 "b22e38e7cd33832a8b75ff239d5055e0a6125076324b802769c409418b4277c0"
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
