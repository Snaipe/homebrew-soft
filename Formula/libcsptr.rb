require 'formula'

$repo = "https://github.com/Snaipe/libcsptr.git"

class Libcsptr < Formula
  homepage "https://github.com/Snaipe/libcsptr/"
  url  $repo, :tag => "v2.0.4"
  head $repo

  depends_on "cmake" => :build

  def install
    system "cmake",
        "-DCMAKE_BUILD_TYPE=RelWithDebInfo",
        "-DCMAKE_INSTALL_PREFIX=#{prefix}",
        "."
    system "make install"
  end
end
