# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "2.43.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v2.43.2/aqua_darwin_amd64.tar.gz"
      sha256 "2200d98654a43a15329c337ff7b0374fa5df4ebcfca1971fa377753c14372f8e"

      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v2.43.2/aqua_darwin_arm64.tar.gz"
      sha256 "5e8898dbefd5459185c28b6e5d9a8508c33c58bd0ada4cc10aec519be7452dfa"

      def install
        bin.install "aqua"
        generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aquaproj/aqua/releases/download/v2.43.2/aqua_linux_amd64.tar.gz"
        sha256 "ca16ed34019b34646304f758eb71a9fcf9b65084f4e48c07d1e27a0798dfb683"

        def install
          bin.install "aqua"
          generate_completions_from_executable(bin/"aqua", "completion", shells: [:bash, :zsh, :fish])
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aquaproj/aqua/releases/download/v2.43.2/aqua_linux_arm64.tar.gz"
        sha256 "ac3313d00d222c8feb80a4f1de74313776c0d71246a12871e271344257bce3d0"

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
