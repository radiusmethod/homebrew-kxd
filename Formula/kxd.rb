class Kxd < Formula
    ver = "v0.0.6"
    desc "Kubeconfig Switcher in Go"
    homepage "https://github.com/radiusmethod/kxd"
    url "https://github.com/radiusmethod/kxd/archive/v0.0.6.tar.gz"
    sha256 "a1f73c4574157d02fc9eb5aa5cc4d7c14da34115cccc2c45bafdaf6e945a08ac"
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
