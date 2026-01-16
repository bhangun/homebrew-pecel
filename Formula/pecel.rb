class Pecel < Formula
  desc "A powerful CLI tool to recursively combine file contents from directories"
  homepage "https://github.com/bhangun/pecel"
  url "https://github.com/bhangun/pecel/releases/download/v1.1.0/pecel-v1.1.0.tar.gz"
  sha256 "b1d2f001354af243a93cc00418a8659d478303ed5c9a6e213026d9a5b73cec89"
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
