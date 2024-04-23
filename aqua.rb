# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "2.27.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.27.3/aqua_darwin_amd64.tar.gz"
      sha256 "591b5eba2c4132b1e6920cf26f0d5055ce440a2a80c95df4389c9e83c2cf6e56"

      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v2.27.3/aqua_darwin_arm64.tar.gz"
      sha256 "52889c186939d295ab391e53c00dadbd79b476b4a3178dc9afa4dd51ac202210"

      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh])
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.27.3/aqua_linux_amd64.tar.gz"
      sha256 "a4887899f4820c09904d89281caf5cdc2fb8ee23f286465688ba196d4eb09f5a"

      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v2.27.3/aqua_linux_arm64.tar.gz"
      sha256 "c26e77536df5c6934ceb1a8083c4ce12364e1aecad447032428b9badbc1af3c7"

      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh])
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
