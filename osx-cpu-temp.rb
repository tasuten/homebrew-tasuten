class OsxCpuTemp < Formula
  desc 'Command to show current CPU temperature for OS X'
  head 'https://github.com/lavoiesl/osx-cpu-temp.git'
  homepage 'https://github.com/lavoiesl/osx-cpu-temp'
  url 'https://github.com/lavoiesl/osx-cpu-temp.git'
  version '1.0'

  def install
    system "make"
    bin.install('osx-cpu-temp')
  end

  test do
    assert_match /^-?\d+\.\d\u{00B0}C$/, `#{bin}/osx-cpu-temp`.chomp
  end

end

