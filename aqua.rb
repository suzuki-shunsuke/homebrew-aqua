# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "2.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v2.3.3/aqua_darwin_arm64.tar.gz"
      sha256 "7b3fa0dbe5c54c8dab704f22a38e0b87b881d2ba8b4c4ee00a242cd6efd41c59"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.3.3/aqua_darwin_amd64.tar.gz"
      sha256 "2644737c776c3e5e60449549567d1fa27fb5fb8d90cc4580534333a4e6205f0b"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.3.3/aqua_linux_amd64.tar.gz"
      sha256 "927eafccf11430bfcc1cd671451d9f13f52f9dc390609dc0ae732d58b2e28abc"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v2.3.3/aqua_linux_arm64.tar.gz"
      sha256 "01c83ca27ff7874ad6de97161c48c1e22bcdee116392f4955f9c4a6b33aaa843"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
