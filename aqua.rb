# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "2.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.3.2/aqua_darwin_amd64.tar.gz"
      sha256 "755d4e5aba7b6cfa71af67d625d16a2e46ea58e8760bc7c5f0bd3bbd4dd74dff"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v2.3.2/aqua_darwin_arm64.tar.gz"
      sha256 "0b57149c5b276869b12d2d5dd079a52b5f7e3679e9784a5a7e37f7c5fb67c4b0"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v2.3.2/aqua_linux_arm64.tar.gz"
      sha256 "118013935f60e46cb44feb77b430cfbf0b037ca4c4eb94a3fcb79c09ba9f1803"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.3.2/aqua_linux_amd64.tar.gz"
      sha256 "85990fd94cfb818a70266b1e4c10c8a9683ddd340a3e906d4532acd37bdb8ce2"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
