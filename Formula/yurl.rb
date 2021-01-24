# This file was generated by GoReleaser. DO NOT EDIT.
class Yurl < Formula
  desc "Universal Links / AASA File Validator."
  homepage "https://github.com/chayev/yurl"
  version "0.5.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chayev/yurl/releases/download/v0.5.1/yurl-v0.5.1-macos-amd64.tar.gz"
    sha256 "9e0627c72c09e73f8304c31ab1eab78d93263af4c7663aad5563a2bd3004b1cf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/chayev/yurl/releases/download/v0.5.1/yurl-v0.5.1-linux-amd64.tar.gz"
    sha256 "25c2c86e8e074dbafc4686101b6b2f6db1030e9f428a2eee8324be2f77b2b2df"
  end

  def install
    bin.install "yurl"
  end

  test do
    system "#{bin}/yurl", "help"
  end
end
