class UsedMem < Formula
  desc 'CLI Tool to print memory status'
  head 'https://github.com/yonchu/used-mem.git'
  homepage 'https://github.com/yonchu/used-mem'
  url 'https://github.com/yonchu/used-mem.git', :tag => '1.0'
  version '1.0'

  def install
    bin.install('used-mem')
  end

  test do
    assert_match /^\d+$/, `#{bin}/used-mem "#u"`.chomp
  end

end

