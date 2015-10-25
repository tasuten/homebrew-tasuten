require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class OsxCpuTemp < Formula
  head 'git://github.com/lavoiesl/osx-cpu-temp.git'
  homepage 'https://github.com/lavoiesl/osx-cpu-temp'
  url 'git://github.com/lavoiesl/osx-cpu-temp.git'
  version '1.0'

  def install
    system "make"
    bin.install('osx-cpu-temp')
  end

end

