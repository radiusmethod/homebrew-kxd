class Kxd < Formula
    ver = "v0.0.9"
    desc "Kubeconfig Switcher in Go"
    homepage "https://github.com/radiusmethod/kxd"
    url "https://github.com/radiusmethod/kxd/archive/v0.0.9.tar.gz"
    sha256 "3a8ff46e21a6b601f1c2cbdb8076bf3f1e796134570a2e388fd7af1eaadeb5b3"
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
