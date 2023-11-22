# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "2.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v2.19.0/aqua_darwin_arm64.tar.gz"
      sha256 "a611e12098575e2d3306e0fd8a74475078600817b312359982747c365216e4e3"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.19.0/aqua_darwin_amd64.tar.gz"
      sha256 "4f518bb9a1e31cd390bd8a3afb563834d08249e3d67601e5792651e655ab43e8"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.19.0/aqua_linux_amd64.tar.gz"
      sha256 "58986e4588280fb5bcdc4be57be41574f7bb036e2f8ffe454cf5a8d0da099592"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v2.19.0/aqua_linux_arm64.tar.gz"
      sha256 "34133be19764763ec1bf0d2237932ae89dd233ed516d80f796dc85449013878b"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
