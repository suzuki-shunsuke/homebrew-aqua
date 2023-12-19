# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "2.21.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v2.21.1/aqua_darwin_arm64.tar.gz"
      sha256 "84d3a06643846f9ac2224dcd9c479c5b69e8126630e55199a9bd6d68d61d1029"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.21.1/aqua_darwin_amd64.tar.gz"
      sha256 "31b5b1bc2f248f614e8fd56a70057744030eb9482e32a223697c4794971bb795"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v2.21.1/aqua_linux_arm64.tar.gz"
      sha256 "fddd37e1a4e2ffeae5f59d9c6be138a21b67d2b9a62692fe25792075514d503f"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.21.1/aqua_linux_amd64.tar.gz"
      sha256 "39eb62ec2e579d94a060a069c260bee6919808608ef33467f63c92bbc8a0544c"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
