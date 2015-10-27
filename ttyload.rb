class Ttyload < Formula
  head  'git://github.com/lindes/ttyload.git'
  homepage 'http://www.daveltd.com/src/util/ttyload/'
  url 'git://github.com/lindes/ttyload.git'
  version '0.5.3'

  def install
    system "make"
    bin.install('ttyload')
  end

end

