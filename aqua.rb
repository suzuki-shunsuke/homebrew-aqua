# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "1.27.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v1.27.0/aqua_darwin_arm64.tar.gz"
      sha256 "8fedf692196be1de5a87c66a67fa0ea6556058143e9252722dd1aff2dcd3fc4f"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.27.0/aqua_darwin_amd64.tar.gz"
      sha256 "ad8184c2a359fe8efe67bd20382927f408b624b3e22984358ef0ba6018123294"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.27.0/aqua_linux_amd64.tar.gz"
      sha256 "98bba498cfdc9ca4491e03428d8c8f9e47b79495a5673615c187d2ae281f14de"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v1.27.0/aqua_linux_arm64.tar.gz"
      sha256 "8f8e9a8131c9d11579dfe25b09296b448133af5c83022c6c2b09a424d1aaf37f"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
