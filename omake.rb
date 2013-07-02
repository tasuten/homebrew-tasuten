require 'formula'

class Omake < Formula
  homepage 'http://omake.metaprl.org/index.html'
  url 'http://omake.metaprl.org/downloads/omake-0.9.8.6-0.rc1.tar.gz'
  sha1 'f714fa992bf391b8bac49a488bc654128962d1cc'
  version '0.9.8.6'

  depends_on 'cmake' => :build
  depends_on 'ocaml'

  def install

    # http://ocaml-nagoya.g.hatena.ne.jp/yoshihiro503/20120523/1337759972
    inreplace 'OMakefile' do |s|
      s.gsub! 'OCAMLFLAGS[] += -w Ae$(if $(OCAML_ACCEPTS_Z_WARNING), z)', \
        'OCAMLFLAGS[] += -w ae$(if $(OCAML_ACCEPTS_Z_WARNING), z)'
    end

    system 'make', 'all'

    # change the install directory
    inreplace '.config' do |s|
      s.change_make_var! 'PREFIX', prefix
    end

    system 'make', 'install'
  end

  test do
    system "#{bin}/omake", '--version'
  end
end
