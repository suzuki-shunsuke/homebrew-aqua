# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "1.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.10.1/aqua_darwin_amd64.tar.gz"
      sha256 "2d89d3dd8498bd77fff1f853d53fda58de6b7bff692b915f3d08ea2772f2de61"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v1.10.1/aqua_darwin_arm64.tar.gz"
      sha256 "36c26d8533b727aa6688fb6a8ca260ed2432cf1b42c26b30bea97007f7227a5e"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v1.10.1/aqua_linux_arm64.tar.gz"
      sha256 "64f4d9dc6a7d1111fa015946f6305b88dc41289d01ee42c38d9c32fbe9b50e80"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.10.1/aqua_linux_amd64.tar.gz"
      sha256 "2a8c0fac47528d3bb1ccc050bd6fe2fa5df02a183428a77ef2db6deb5710b3c1"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
