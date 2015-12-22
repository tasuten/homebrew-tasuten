class Ttyload < Formula
  desc 'Utility to show a graph of load average'
  head  'https://github.com/lindes/ttyload.git'
  homepage 'http://www.daveltd.com/src/util/ttyload/'
  url 'https://github.com/lindes/ttyload.git'
  version '0.5.3'

  def install
    system "make"
    bin.install 'ttyload'
    man1.install 'ttyload.1'
  end

  test do
    ENV["TERM"] = "xterm-256color"
    pipe_output "#{bin}/ttyload", "\C-c"
    assert $?.eql? 130
  end

end

