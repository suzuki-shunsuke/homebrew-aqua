# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "2.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v2.24.0/aqua_darwin_arm64.tar.gz"
      sha256 "cea43b89887f855ffcd278ac54a5edf1562d94fb809088d412610ad6c9ba2af4"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.24.0/aqua_darwin_amd64.tar.gz"
      sha256 "4e578e8651535d81f5e805d138141224e84bc054eee312db1173ca662e84aec8"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v2.24.0/aqua_linux_arm64.tar.gz"
      sha256 "528f8f1904a0cc1c79ae9f98e9150f3701cc94f77372c6106b72dbcf5e81df4b"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.24.0/aqua_linux_amd64.tar.gz"
      sha256 "558adcb2705db48f56703ff16ceec13be1403bd999c2e2b3c3d3926be58b036a"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
