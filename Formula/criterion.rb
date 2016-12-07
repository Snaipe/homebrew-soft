require 'formula'

$repo = "https://github.com/Snaipe/Criterion.git"

class Criterion < Formula
  homepage "https://github.com/Snaipe/Criterion"
  version "2.3.0"
  url  $repo, :revision => "4e3fbde48f4f19bbbd534de60a96c2cc87550b67"
  head $repo

  depends_on "nanomsg"
  depends_on "cmake"    => :build

  def install
    system "cmake",
        "-DCMAKE_BUILD_TYPE=RelWithDebInfo",
        "-DCMAKE_INSTALL_PREFIX=#{prefix}",
        "-DCMAKE_INSTALL_LIBDIR=lib",
        "."
    system "make install"
  end
end
