require 'formula'

$repo = "https://github.com/Snaipe/Criterion.git"

class Libcriterion < Formula
  homepage "https://snaipe.github.io/Criterion"
  url  $repo, :tag => "v2.1.0"
  head $repo

  depends_on "cmake" => :build
  depends_on "gcc"   => :build
  fails_with :clang

  def install
    system "cmake",
        "-DCMAKE_BUILD_TYPE=RelWithDebInfo",
        "-DCMAKE_INSTALL_PREFIX=#{prefix}",
        "."
    system "make install"
  end
end
