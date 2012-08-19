require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Inputsource < Formula
  head 'https://github.com/hnakamur/inputsource.git'
  homepage 'https://github.com/hnakamur/inputsource'
  url 'https://github.com/hnakamur/inputsource.git', :revision => 'aed9f8e234e952ad3e4eaea489e66ea4f7390598'
  version "1.0"
  # depends_on 'cmake' => :build

  def install
    system "make"
    bin.install('inputsource')
  end

end

