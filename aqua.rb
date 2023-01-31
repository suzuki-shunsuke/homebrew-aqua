# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aqua < Formula
  desc "Declarative CLI Version manager. Support Lazy Install and Sharable configuration mechanism named Registry. Switch versions seamlessly
"
  homepage "https://github.com/aquaproj/aqua"
  version "1.32.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.32.2/aqua_darwin_amd64.tar.gz"
      sha256 "5dddf8f6cdb340fb9c427259a8aebbc339cac8cfbdee77ecef10061198dbfff5"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquaproj/aqua/releases/download/v1.32.2/aqua_darwin_arm64.tar.gz"
      sha256 "26c8401b2827b6a908a20400be07fb4271b35d366b6d78108ef07866ba6880db"

      def install
        bin.install "aqua"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquaproj/aqua/releases/download/v1.32.2/aqua_linux_arm64.tar.gz"
      sha256 "173a41f4247690ef709b6c7b43a699fd646ff43800d2e18509b30a5d3c3df2c6"

      def install
        bin.install "aqua"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquaproj/aqua/releases/download/v1.32.2/aqua_linux_amd64.tar.gz"
      sha256 "64419bcddca58f787a7696aaf9e869a493cc88578bd658c0a83670f77b3093e0"

      def install
        bin.install "aqua"
      end
    end
  end

  test do
    system "#{bin}/aqua --version"
  end
end
