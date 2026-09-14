class Huectl < Formula
  desc "Ferramenta de CLI"
  homepage "https://github.com/AllMaciente/Huectl"
  url "https://github.com/AllMaciente/Huectl/archive/refs/tags/0.2.0.tar.gz"
  sha256 "2f36af81b6be1f84f1004a1df100122a3500276e66cdc8a16e82b43ba98a62b7"
  license "MIT" 
  depends_on "rust" => :build

  def install

    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/huectl", "--help"
  end
end
