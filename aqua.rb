# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "1.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.12.1/aqua_darwin_amd64.tar.gz"
      sha256 "22bbb497343943142c05c53413c20bd21fcecb33e7e3df7c7664a6acf072a8d0"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v1.12.1/aqua_darwin_arm64.tar.gz"
      sha256 "c8fe4aa8bd6fb1858eaed8ff6729126f676289f028fa0fe60ce4335d1dfb9704"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.12.1/aqua_linux_amd64.tar.gz"
      sha256 "71a9d70e3e9fe19bd0ca27fe083902807a23733a183550a4e15f4ee42b15e143"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v1.12.1/aqua_linux_arm64.tar.gz"
      sha256 "ce3d1e7a9fe7816d26b10b9819d8af3f5f28585567d3989c6e2f8843a79bda3a"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
