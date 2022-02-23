# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.0.0/aqua_darwin_amd64.tar.gz"
      sha256 "d19c0cf2fcf7abeef0f5cfacf42760351b70d7f9d51f622969c51471fe30cd11"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v1.0.0/aqua_darwin_arm64.tar.gz"
      sha256 "4bf99b6007061117682868d98e5e7fed20661f01bf4a0a63fc37084a22ca7ca2"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v1.0.0/aqua_linux_arm.tar.gz"
      sha256 "8674d27c70b98229b85397a3e7326adfdeb592eacf1f356802bcb5349e13f79f"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.0.0/aqua_linux_amd64.tar.gz"
      sha256 "0436705244658a67e37bd3c9b6ad3ebc6be2a1b91951397b67d671fd3e683d35"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v1.0.0/aqua_linux_arm64.tar.gz"
      sha256 "d70c6d8b2cf12a5c3106f073f67f2536d823c4c2ad27df6dc781d81db2cc3001"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
