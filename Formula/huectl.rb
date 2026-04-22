class Huectl < Formula
  desc "Ferramenta de CLI"
  homepage "https://github.com/AllMaciente/Huectl"
  url "https://github.com/AllMaciente/Huectl/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "f3b2455696aa532b9a70900ad7791272b6db1874ff4a24743687e15e9ec186ff"
  license "MIT" 
  depends_on "rust" => :build

  def install

    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/huectl", "--help"
  end
end
