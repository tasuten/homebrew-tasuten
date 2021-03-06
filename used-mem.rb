class UsedMem < Formula
  desc "CLI Tool to print memory status"
  homepage "https://github.com/yonchu/used-mem"
  url "https://github.com/yonchu/used-mem.git", :tag => "1.0", :revision => "8e6ee31271d2f16314314cd9711eed4818624cc4"
  head "https://github.com/yonchu/used-mem.git"

  def install
    bin.install "used-mem"
  end

  test do
    assert_match /^\d+$/, `#{bin}/used-mem "#u"`.chomp
  end
end
