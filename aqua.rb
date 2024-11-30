# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "2.38.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aquaproj/aqua/releases/download/v2.38.2/aqua_darwin_amd64.tar.gz"
      sha256 "1e64926869fdb75f152629ed4c0ca0d6c08b4222b4a9e5aa03e40a1ad8265da5"

      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
      end
    end
    on_arm do
      url "https://github.com/aquaproj/aqua/releases/download/v2.38.2/aqua_darwin_arm64.tar.gz"
      sha256 "5956640444c2cc10a42a479159461adbc41cf9c748d980cb668679fdc9623f2f"

      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aquaproj/aqua/releases/download/v2.38.2/aqua_linux_amd64.tar.gz"
        sha256 "9fd476d48516f1ea461b244c3dde99aa5b3fc9e2046c7a411a9a9f8e93f875e1"

        def install
          bin.install "aqua"
          generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aquaproj/aqua/releases/download/v2.38.2/aqua_linux_arm64.tar.gz"
        sha256 "f6db7c1a8efa85b31b33397ed2d94cbec4c31020e75e18296b6abedcafcc6073"

        def install
          bin.install "aqua"
          generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
        end
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
