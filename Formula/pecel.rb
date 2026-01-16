class Pecel < Formula
    2   desc "A powerful CLI tool to recursively combine file contents from directories"
    3   homepage "https://github.com/bhangun/pecel"
    4   url "https://github.com/bhangun/pecel/releases/download/v1.1.0/pecel-v1.1.0.tar.gz"
    5   sha256 "TODO_REPLACE_WITH_ACTUAL_SHA256"  # You'll need to calculate this
    6   license "MIT"
    7
    8   def install
    9     if OS.mac?
   10       bin.install "pecel-darwin-amd64" => "pecel"
   11     elsif OS.linux?
   12       if Hardware::CPU.intel?
   13         bin.install "pecel-linux-amd64" => "pecel"
   14       elsif Hardware::CPU.arm?
   15         bin.install "pecel-linux-arm64" => "pecel"
   16       end
   17     end
   18   end
   19
   20   test do
   21     system "#{bin}/pecel", "--version"
   22   end
   23 end
