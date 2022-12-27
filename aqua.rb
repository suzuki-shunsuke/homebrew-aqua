# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "1.26.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.26.2/aqua_darwin_amd64.tar.gz"
      sha256 "756d9d5f0117177802e33d25b1b099641386f7d4fc026c45a6d5fcee3a9869ed"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v1.26.2/aqua_darwin_arm64.tar.gz"
      sha256 "cc76ff2a353183eceb09ef1f9be32e1dad9f1c51ea9b90f2a50900053e4f3172"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.26.2/aqua_linux_amd64.tar.gz"
      sha256 "4e61ae6b85eddb14a7c7e3d7338068fffa20838cdbaef0defb5f422704cbd149"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v1.26.2/aqua_linux_arm64.tar.gz"
      sha256 "d0560a711dea5c291ca0bf68d8f22f1c81853a11ec6e488103c05447bc92c834"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
