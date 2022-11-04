# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "1.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v1.22.0/aqua_darwin_arm64.tar.gz"
      sha256 "769cc51477433e8b445a78155de5822d81c7ff4a3199e24da712dab5be54c469"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.22.0/aqua_darwin_amd64.tar.gz"
      sha256 "174d94b6f42a376e821a1a37e55a2b1d7cfac1f0810d6de4d6d8f0fa15d709a1"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.22.0/aqua_linux_amd64.tar.gz"
      sha256 "7d60efaee23f7e8aa4cb45e41d529757242e5d047a590099671aa389fe594c15"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v1.22.0/aqua_linux_arm64.tar.gz"
      sha256 "0a7456732348f6dc3d0a54cbf604ff526ca968c0af590a31e60d7a9dbded623d"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
