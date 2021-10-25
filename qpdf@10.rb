class QpdfAT10 < Formula
  desc "Tools for and transforming and inspecting PDF files"
  homepage "https://github.com/qpdf/qpdf"
  url "https://github.com/qpdf/qpdf/releases/download/release-qpdf-10.1.0/qpdf-10.1.0.tar.gz"
  sha256 "862c144e4516302327cea908f2879131cc8198b10d3d3a90ef7bc006a915120d"
  license "Apache-2.0"

  depends_on "jpeg"

  uses_from_macos "zlib"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "#{bin}/qpdf", "--version"
  end
end