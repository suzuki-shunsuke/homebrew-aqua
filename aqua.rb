# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "1.35.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.35.0/aqua_darwin_amd64.tar.gz"
      sha256 "cbf3d40db3b4686a651d85e2e0611cac78f473d04619ce7f0c2c18c3917b6875"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v1.35.0/aqua_darwin_arm64.tar.gz"
      sha256 "ea47637ad6893736218f5b155a4ee520f6ba6df864b2a3546635c1f64eaf3ed2"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v1.35.0/aqua_linux_arm64.tar.gz"
      sha256 "9eb4e4c3f1bbda6b898f5e23f3b7df7fd374e42d35940f9c13f438ec0e8332ea"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.35.0/aqua_linux_amd64.tar.gz"
      sha256 "aa0cc46afd0448c99ae457b6c84e88e55d6eb422b7b68dde349c69472ae8008b"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
