class Idol < Formula
    desc "idol: A C++ Framework for Optimization."
    homepage "https://henrilefebvre.com/idol"
    
    on_macos do
        url "https://github.com/hlefebvr/idol/releases/download/0.9.0/idol-0.9.0-macos-arm64.tar.gz"
        sha256 "431b13f11966207e8d8bae83deeb55acff1d88b3ca6884d5168320d34dc46738"
        version "0.9.0"
    end

    #on_linux do
    #    url "https://github.com/hlefebvr/idol/releases/download/v1.0.0/idol-1.0.0-linux.tar.gz"
    #    sha256 "LINUX_SHA256"
    #end
    license "GPL-3.0"

    def install
        bin.install Dir["bin/*"]          # CLI executables
        lib.install Dir["lib/*"]          # libraries
        include.install Dir["include/*"]  # headers
    end

    test do
        system "#{bin}/idol_cl", "--version" if File.exist?("#{bin}/idol_cl")
    end
end
