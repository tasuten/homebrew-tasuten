require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Inputsource < Formula
  head 'git://github.com/hnakamur/inputsource.git'
  homepage 'https://github.com/hnakamur/inputsource'
  url 'git://github.com/hnakamur/inputsource.git'
  version '1.0'

  def install
    system "make"
    bin.install('inputsource')
  end

end

