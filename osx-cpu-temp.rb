class OsxCpuTemp < Formula
  desc 'Command to show current CPU temperature for OS X'
  head 'git://github.com/lavoiesl/osx-cpu-temp.git'
  homepage 'https://github.com/lavoiesl/osx-cpu-temp'
  url 'git://github.com/lavoiesl/osx-cpu-temp.git'
  version '1.0'

  def install
    system "make"
    bin.install('osx-cpu-temp')
  end

end

