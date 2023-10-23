class Kxd < Formula
    ver = "v0.0.7"
    desc "Kubeconfig Switcher in Go"
    homepage "https://github.com/radiusmethod/kxd"
    url "https://github.com/radiusmethod/kxd/archive/v0.0.7.tar.gz"
    sha256 "d9b8c6e5ff64cf4d922838770cf6237b4fab810dc8c09df42bf8ac31afbcf8df"
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
