# This file was generated by GoReleaser. DO NOT EDIT.
class Odinlink < Formula
  desc "Utility for OneLink API."
  homepage "https://github.com/chayev/odinlink"
  version "0.2.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chayev/odinlink/releases/download/v0.2.1/odinlink-v0.2.1-macos-amd64.tar.gz"
    sha256 "da88ad7231b6b11f2b8334e78d61df9ce8ac98479a44424f21dbb84dbfb341bd"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chayev/odinlink/releases/download/v0.2.1/odinlink-v0.2.1-linux-amd64.tar.gz"
      sha256 "0b73d9dbb86b03599b8462cfe067c97fe66e6768547fc6196273e285d1e5ccc9"
    end
  end

  def install
    bin.install "odinlink"
  end

  test do
    system "#{bin}/odinlink", "help"
  end
end
