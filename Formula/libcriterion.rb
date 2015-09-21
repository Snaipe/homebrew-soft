require 'formula'

$repo = "https://github.com/Snaipe/Criterion.git"

class Libcriterion < Formula
  homepage "https://snaipe.github.io/Criterion"
  version "2.1.0"
  url  $repo, :revision => "984ecc5a74ff6e631105675095e89174b5c254ee"
  head $repo

  depends_on "cmake" => :build
  depends_on "gcc"   => :build
  fails_with :clang

  def install
    system "cmake",
        "-DCMAKE_BUILD_TYPE=RelWithDebInfo",
        "-DCMAKE_PREFIX_PATH=/opt/local",
        "-DCMAKE_INSTALL_PREFIX=#{prefix}",
        "."
    system "make install"
  end
end
