class Idol < Formula
    desc "idol: A C++ Framework for Optimization."
    homepage "https://henrilefebvre.com/idol"
    
    on_macos do
        url "https://github.com/hlefebvr/idol/releases/download/0.0.1/idol-0.0.1-macos-arm64.tar.gz"
        sha256 "c4c2fc5db1204fcfe3be3f9b4159018142da45c63e3c757e7401aeace3fc90ca"
        version "0.0.1"
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
