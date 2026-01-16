class Pecel < Formula
  desc "A powerful CLI tool to recursively combine file contents from directories"
  homepage "https://github.com/bhangun/pecel"
  url "https://github.com/bhangun/pecel/releases/download/v0.1.0/pecel-v0.1.0.tar.gz"
  sha256 "cedb2f8254f9fb20a069526d8657140bccedf899c63271901a7a22f1c1a31a23"
  license "MIT"

  def install
    if OS.mac?
      if Hardware::CPU.intel?
        bin.install "pecel-darwin-amd64" => "pecel"
      elsif Hardware::CPU.arm?
        bin.install "pecel-darwin-arm64" => "pecel"
      end
    elsif OS.linux?
      if Hardware::CPU.intel?
        bin.install "pecel-linux-amd64" => "pecel"
      elsif Hardware::CPU.arm?
        bin.install "pecel-linux-arm64" => "pecel"
      end
    end
  end

  test do
    system "#{bin}/pecel", "--version"
  end
end
