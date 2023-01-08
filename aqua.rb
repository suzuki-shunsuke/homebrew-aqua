# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "1.30.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.30.3/aqua_darwin_amd64.tar.gz"
      sha256 "faf0f551e2b5319e7d41ea622f79f39034627b176ea86cf7169094298c6b5690"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v1.30.3/aqua_darwin_arm64.tar.gz"
      sha256 "56b6efead51fd51b36214f71dddbdbf8cecb0d1fbdbaea3a2f0d3463c5d590e9"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v1.30.3/aqua_linux_arm64.tar.gz"
      sha256 "53481fc29dc5a3aa7e04bb0d002bdd7a8066a7258935e3e0dcfd41d3f57f7f7b"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.30.3/aqua_linux_amd64.tar.gz"
      sha256 "0744a068fe9fcc1e68d4abb8000090434e851d25dbe9a41691a66fb8b0d89392"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
