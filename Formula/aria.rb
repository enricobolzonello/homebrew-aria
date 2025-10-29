class Aria < Formula
  desc "The Aria Programming Language"
  homepage "https://egranata.github.io/aria/"
  url "https://github.com/egranata/aria/releases/download/v0.9.20251013/aria-0.9.20251013-aarch64-apple-darwin-20251013222819.tgz"
  sha256 "7c633b831114dd10454acbb601d5ef9b036c4a2e638302396bbed24cb75e6430"
  license "Apache-2.0"

  def install
    bin.install Dir["bin/*"] if Dir.exist?("bin")
    lib.install Dir["lib/*"] if Dir.exist?("lib")
    (share/"aria").install Dir["share/*"] if Dir.exist?("share")
  end

  test do
    system "#{bin}/aria", "--version"
  end
end
