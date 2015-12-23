class Eggx < Formula
  desc "Easy X11 graphics library"
  homepage "http://www.ir.isas.jaxa.jp/~cyamauch/eggx_procall/"
  url "http://www.ir.isas.jaxa.jp/~cyamauch/eggx_procall/eggx-0.93r5.tar.gz"
  version "0.93r5"
  sha256 "fd917f5f8b082f6812f9568cb8960481f88299a23afa372dc8a90851b785b731"

  depends_on :x11

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  def caveats; <<-EOS.undent
  You can get the EGGX's PDF manual from the website(brew home eggx).

      English version:
      http://www.ir.isas.jaxa.jp/~cyamauch/eggx_procall/eggx_procall.pdf
      Japanese version:
      http://www.ir.isas.jaxa.jp/~cyamauch/eggx_procall/eggx_procall.ja.pdf

    EOS
  end

  test do
    (testpath/"compile-test.c").write <<-EOS.undent
      #include <eggx.h>
      int main() {
        return 0;
      }
    EOS
    system "#{bin}/egg", "-o", "compile-test", "compile-test.c"
    system "./compile-test"
    assert $?.success?
  end
end
