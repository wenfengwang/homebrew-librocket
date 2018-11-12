class Librocket < Formula
  desc "The Apache RocketMQ C/C++ library"
  homepage "https://rocketmq.apache.org"
  url "https://github.com/wenfengwang/rocketmq-client-cpp/archive/0.1.tar.gz"
  sha256 "dbed3734b69eb8cdc2775ccc4e1c2300558b46cf59481785fa0e0685f5dbc4b5"

  depends_on "cmake"    => :build
  depends_on "automake" => :build
  depends_on "libtool"  => :build
  
  depends_on "openssl"
  depends_on "bzip2"

  def install
    system "cmake", "."
    system "make"
    system "make", "install, """
  end
end
