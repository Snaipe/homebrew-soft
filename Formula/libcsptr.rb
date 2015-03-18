require 'formula'

class Libcsptr < Formula
  homepage "https://github.com/Snaipe/c-smart-pointers/"
  url "https://github.com/Snaipe/c-smart-pointers.git", :tag => "v1.0"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "gcc"      => :build

  def install
    system "./autogen.sh && ./configure --prefix=#{prefix}"
    system "make install"
  end
end
