class Kxd < Formula
    ver = "v0.1.2"
    desc "Kubeconfig Switcher in Go"
    homepage "https://github.com/radiusmethod/kxd"
    url "https://github.com/radiusmethod/kxd/archive/refs/tags/v0.1.2.tar.gz"
    sha256 "059d241c0404a315dfbc972ed445af2d61d730a81728aa6aece20f614e222108"
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
