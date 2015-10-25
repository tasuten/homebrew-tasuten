require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Eggx < Formula
  homepage 'http://www.ir.isas.jaxa.jp/~cyamauch/eggx_procall/'
  url 'http://www.ir.isas.jaxa.jp/~cyamauch/eggx_procall/eggx-0.93r5.tar.gz'
  sha256 'fd917f5f8b082f6812f9568cb8960481f88299a23afa372dc8a90851b785b731'
  version '0.93r5'

  depends_on 'cmake' => :build

  def install
    system "make PREFIX=#{prefix}"
    system "make install PREFIX=#{prefix}"
  end

  def caveats; <<-EOS.undent
    You can get EGGX's PDF manual from the website(brew home eggx).

        English version:
        http://www.ir.isas.jaxa.jp/~cyamauch/eggx_procall/eggx_procall.pdf
        Japanese version:
        http://www.ir.isas.jaxa.jp/~cyamauch/eggx_procall/eggx_procall.ja.pdf
    EOS
  end

end

