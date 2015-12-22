class Inputsource < Formula
  desc 'CLI Tool to select/print text input source on OS X'
  head 'https://github.com/hnakamur/inputsource.git'
  homepage 'https://github.com/hnakamur/inputsource'
  url 'https://github.com/hnakamur/inputsource.git'
  version '1.0'

  def install
    system "make"
    bin.install('inputsource')
  end

  test do
    system("#{bin}/inputsource")
    assert $?.success?
  end

end

