class Presence < Formula
  desc "CLI Presence"
  homepage "https://github.com/AllMaciente/presence-cli"
  url "https://github.com/AllMaciente/presence-cli/releases/download/v0.1.0/presence"
  sha256 "fc0aa63c8489f8fc4034d3f3643dc20ef17d457bd0c970af1a9a34013a67a276"
  version "0.1.0"

  def install
    bin.install "presence"
  end

  test do
    system "#{bin}/presence", "--help"
  end
end
