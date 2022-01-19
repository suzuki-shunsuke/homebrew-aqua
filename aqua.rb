# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v0.10.1/aqua_darwin_amd64.tar.gz"
      sha256 "019328b2790289b42d01a0d33df62238758c71873ad5792fa1248d1ad07df732"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v0.10.1/aqua_darwin_arm64.tar.gz"
      sha256 "fa8443fd2411fffc1107c3679dc4ae5219d58976081919ee80c6c99630eeafa1"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v0.10.1/aqua_linux_arm64.tar.gz"
      sha256 "10528e34c3dd997265fcb7bc335fe46906e5a28dcbbbe5652e2712d452b7bf74"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v0.10.1/aqua_linux_arm.tar.gz"
      sha256 "7e579322ce08ce76a472a46fffcdce15ac37f1869bae34e6d218138f1962c164"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v0.10.1/aqua_linux_amd64.tar.gz"
      sha256 "ee37e72c59f974dba75689a3e0de69d6fc7d9b15f55b50a517063f73953331bf"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
