# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "2.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v2.16.0/aqua_darwin_arm64.tar.gz"
      sha256 "e426fc4bad5f1997693363f18b4f08184485e7910113edcfdab1e630574b8621"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.16.0/aqua_darwin_amd64.tar.gz"
      sha256 "ac6e72aa2674c5c8c37708f0c3028930782121db636dba931accc53fa81fdedf"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.16.0/aqua_linux_amd64.tar.gz"
      sha256 "43fa3ef35c92d52c7a3258340d8a13c7c99ebe62d3e02234ed667e8b61f67dc8"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v2.16.0/aqua_linux_arm64.tar.gz"
      sha256 "268e998b2891a41256a25c5dc75bc4db658f219e427de43a8b1725a5cee1051c"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
