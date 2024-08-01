class Kxd < Formula
    ver = "v0.1.1"
    desc "Kubeconfig Switcher in Go"
    homepage "https://github.com/radiusmethod/kxd"
    url "https://github.com/radiusmethod/kxd/archive/v0.1.1.tar.gz"
    sha256 "b239264e7958b6d88f56fe512a4f644835177c91ece00120e89534e5a07a82a9"
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
