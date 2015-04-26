require 'formula'

$repo = "https://github.com/Snaipe/Criterion.git"

class Libcriterion < Formula
  homepage "https://snaipe.github.io/Criterion"
  url  $repo, :tag => "v1.2.1"
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
