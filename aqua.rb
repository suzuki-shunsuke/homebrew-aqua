# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "1.29.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.29.0/aqua_darwin_amd64.tar.gz"
      sha256 "cde028ebbec33fe36028c3f28783067367d7d918150bd8e93ac94758663ab21a"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v1.29.0/aqua_darwin_arm64.tar.gz"
      sha256 "94a041131cc4084ef9d02c0399e98e4a763b69be1411df1788f07fc83e63f152"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v1.29.0/aqua_linux_arm64.tar.gz"
      sha256 "ee22a32ee2f28c1ab7a14b4fa22fb15d3545f064ced748b849f5e256afa66c62"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.29.0/aqua_linux_amd64.tar.gz"
      sha256 "bf62d597c7b5415878f66104c722e7aff143f036c920eaa324e14ec5c9aef1e5"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
