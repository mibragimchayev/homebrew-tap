# This file was generated by GoReleaser. DO NOT EDIT.
class Odinlink < Formula
  desc "Utility for OneLink API."
  homepage "https://github.com/chayev/odinlink"
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chayev/odinlink/releases/download/v0.1.0/odinlink-v0.1.0-macos-amd64.tar.gz"
    sha256 "5d34465f7e0d3109679a30676726a1dfdde33a9fcc08f52a90e11e48e14b1c2a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chayev/odinlink/releases/download/v0.1.0/odinlink-v0.1.0-linux-amd64.tar.gz"
      sha256 "d8eebf685145e9e41e53349e2ca402f5763fde5e93354b1f2942173021459ac4"
    end
  end

  def install
    bin.install "odinlink"
  end

  test do
    system "#{bin}/odinlink", "help"
  end
end
