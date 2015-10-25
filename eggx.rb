require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Eggx < Formula
  homepage 'http://www.ir.isas.jaxa.jp/~cyamauch/eggx_procall/'
  url 'http://www.ir.isas.jaxa.jp/~cyamauch/eggx_procall/eggx-0.93r5.tar.gz'
  md5 '236f852a5d8d4591f730e439e5130cc0'
  version '0.93r5'

  depends_on 'cmake' => :build

  def install
    ENV.x11

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

