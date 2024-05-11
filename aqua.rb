# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "2.28.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.28.0/aqua_darwin_amd64.tar.gz"
      sha256 "21e006976138c8c09b1bbddef70d1b9538d89797ff6425030d4771aed12037ab"

      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v2.28.0/aqua_darwin_arm64.tar.gz"
      sha256 "396bf6ec9c24cc71049ae8c139a6aea635abc52648aa003ca79dc5e0cab973ee"

      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh])
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.28.0/aqua_linux_amd64.tar.gz"
      sha256 "efced92f31308e2f52240e363686db52f1e73aa2029e3ef03ec958e04925170c"

      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v2.28.0/aqua_linux_arm64.tar.gz"
      sha256 "cb0bcb5f99bb55f891bda73d5f98a358c0a8b47ef722fb80934cc8b6c9298b43"

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
