# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "1.37.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.37.1/aqua_darwin_amd64.tar.gz"
      sha256 "cfdca5cc64a1543e6d8323bb1fa22954a63c85dbfa0d574eea3ecbf92da7d92e"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v1.37.1/aqua_darwin_arm64.tar.gz"
      sha256 "743ff8c084bdd1a1499da06bea335c901d02e84aec7a17dbfb9605b24d259be6"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v1.37.1/aqua_linux_arm64.tar.gz"
      sha256 "0935652faaa9f290898bdb604c042fe5650d4e2576877fc0f4d87ad884adb743"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.37.1/aqua_linux_amd64.tar.gz"
      sha256 "0f9a41212c711ad393880f95014cb2456c2a1d3d9ea6baa4d8ed83da89359d68"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
