class Huectl < Formula
  desc "Ferramenta de CLI"
  homepage "https://github.com/AllMaciente/Huectl"
  url "https://github.com/AllMaciente/Huectl/archive/refs/tags/0.1.2.tar.gz"
  sha256 "a018fd0d2c8cce0890b605ef9d39c74fe2201688835cac567a9ec41d69a3b866"
  license "MIT" 
  depends_on "rust" => :build

  def install

    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/huectl", "--help"
  end
end
