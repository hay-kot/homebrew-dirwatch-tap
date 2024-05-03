# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Watchexec < Formula
  desc "dirwatch is a simple, standalone tool that watches a path and runs a command whenever it
detects a matching event.
"
  homepage ""
  version "0.0.5"
  license "MIT"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/watchexec/releases/download/v0.0.5/watchexec_Darwin_x86_64.tar.gz"
      sha256 "31b450fe2cab3fe20a38037180297d894d4d6982031599ceb1ab9bcab1ab9f72"

      def install
        bin.install "watchexec"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hay-kot/watchexec/releases/download/v0.0.5/watchexec_Darwin_arm64.tar.gz"
      sha256 "25c9b7575d09c8add037090e3b64674a3e295d59fa32ec42be4df961c628a642"

      def install
        bin.install "watchexec"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hay-kot/watchexec/releases/download/v0.0.5/watchexec_Linux_x86_64.tar.gz"
      sha256 "2ec62a611facf86145ddef5d4b350e4bdc39f88c5376d15cb707df097c8932c5"

      def install
        bin.install "watchexec"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hay-kot/watchexec/releases/download/v0.0.5/watchexec_Linux_arm64.tar.gz"
      sha256 "3749d18910cdbc06b2a73cd946001c4bf500089fa675ebaa7a7446c3c1da2ccb"

      def install
        bin.install "watchexec"
      end
    end
  end

  service do
    run [opt_bin/"dirwatch", "watch"]
    keep_alive true
  end

  test do
    system "#{bin}/dirwatch version"
  end
end
