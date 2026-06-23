class Idol < Formula
    desc "idol: A C++ Framework for Optimization."
    homepage "https://henrilefebvre.com/idol"
    
    on_macos do
        url "https://github.com/hlefebvr/idol/releases/download/0.10.8/idol-0.10.8-macos-arm64.tar.gz"
        sha256 "f94c48512d877f6c2f90a9ddef3f011cae980181a06d926b47a53621e0e8fd1f"
        version "0.10.8"
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
