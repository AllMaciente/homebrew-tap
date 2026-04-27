class Huectl < Formula
  desc "Ferramenta de CLI"
  homepage "https://github.com/AllMaciente/Huectl"
  url "https://github.com/AllMaciente/Huectl/archive/refs/tags/0.1.3.tar.gz"
  sha256 "b77a748a0e681ec544b80ee6798a7f50ff443e8224195e46223dc9f5a4ec2939"
  license "MIT" 
  depends_on "rust" => :build

  def install

    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/huectl", "--help"
  end
end
