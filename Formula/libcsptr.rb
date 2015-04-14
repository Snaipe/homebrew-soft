require 'formula'

$repo = "https://github.com/Snaipe/libcsptr.git"

class Libcsptr < Formula
  homepage "https://github.com/Snaipe/libcsptr/"
  url  $repo, :tag => "v2.0.0"
  head $repo

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool"  => :build
  depends_on "gcc"      => :build
  fails_with :clang

  def install
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
