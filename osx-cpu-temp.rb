require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class OsxCpuTemp < Formula
  head 'git://github.com/lavoiesl/osx-cpu-temp.git'
  homepage 'https://github.com/lavoiesl/osx-cpu-temp'
  url 'git://github.com/lavoiesl/osx-cpu-temp.git', :revision => 'e1045e776d6bb7b0c3a5cbaa76ace47b7c9966f1'
  version '1.0'
  # depends_on 'cmake' => :build

  def install
    system "make"
    bin.install('osx-cpu-temp')
  end

end

