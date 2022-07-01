# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "1.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.16.0/aqua_darwin_amd64.tar.gz"
      sha256 "918313181f5a73a97b57638a7aa2035412e619ed4f39eb6c8345f723d84db2be"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v1.16.0/aqua_darwin_arm64.tar.gz"
      sha256 "50e0d9e896ac1ab9037c4518cc1601426aaacf738ee26ee232cb22f8f14e5dce"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.16.0/aqua_linux_amd64.tar.gz"
      sha256 "8152509a216801604b0bd68f7485bb6cf606f6634c401ccf042671d206288a34"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v1.16.0/aqua_linux_arm64.tar.gz"
      sha256 "914bc0228c20bb86e863568dfd234449030c5e18da32e03554369ae51353bb11"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
