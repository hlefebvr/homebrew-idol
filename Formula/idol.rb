class Idol < Formula
  desc "idol: A C++ Framework for Optimization."
  homepage "https://henrilefebvre.com/idol"
  on_macos do
    url "https://github.com/hlefebvr/idol/releases/download/MacOSX/"
    sha256 ""
    end

    on_linux do
    url "https://github.com/hlefebvr/idol/releases/download/v1.0.0/idol-1.0.0-linux.tar.gz"
    sha256 "LINUX_SHA256"
    end
  license "GPL-3.0"

  def install
    bin.install Dir["bin/*"]          # CLI executables
    lib.install Dir["lib/*"]          # libraries
    include.install Dir["include/*"]  # headers
  end

  test do
    system "#{bin}/idol_cli", "--version" if File.exist?("#{bin}/idol_cli")
  end
end