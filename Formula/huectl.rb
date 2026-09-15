class Huectl < Formula
  desc "Ferramenta de CLI"
  homepage "https://github.com/AllMaciente/Huectl"
  url "https://github.com/AllMaciente/Huectl/archive/refs/tags/0.2.0.tar.gz"
  sha256 "09345d9dcdc1ce742274ac30df8dc2499234861ff8a7c3428cc414073db267d6"
  license "MIT" 
  depends_on "rust" => :build

  def install

    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/huectl", "--help"
  end
end
