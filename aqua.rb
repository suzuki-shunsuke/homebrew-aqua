# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "2.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.26.0/aqua_darwin_amd64.tar.gz"
      sha256 "52e39560f06e90d5797a4bdb9abebba56f0b4101675375e95e8c508c10e889c4"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v2.26.0/aqua_darwin_arm64.tar.gz"
      sha256 "eb8220c2d7ddaa002777fa6ac48ad16d67183fe427d6548f0a72dad9728828b0"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.26.0/aqua_linux_amd64.tar.gz"
      sha256 "2d9f0b13c272948fba1f899dd50f38273cdd4bbdf01b8e38fe66ae0e0143bd81"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v2.26.0/aqua_linux_arm64.tar.gz"
      sha256 "c97eaf9cbc54af102023648c33f8ed584d71cb35a71e4a649d86cc8b5390f417"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
