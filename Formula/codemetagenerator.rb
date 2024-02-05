# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Codemetagenerator < Formula
  desc "A CodeMeta project description generator written in Go."
  homepage "https://angstrom.io/codemetagenerator"
  version "0.47.13"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/cacoco/codemetagenerator/releases/download/v0.47.13/codemetagenerator_Darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "916b573b53fbd43b18380a3015fba3314c5f5107bc3b793f726ac192ef40f549"

    def install
      bin.install "codemetagenerator"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/cacoco/codemetagenerator/releases/download/v0.47.13/codemetagenerator_Linux_armv7.tar.gz", using: CurlDownloadStrategy
      sha256 "4ab090efa81ff599c0930cdc4a2a1c14c860b0696643a8c415566dad4855a26a"

      def install
        bin.install "codemetagenerator"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cacoco/codemetagenerator/releases/download/v0.47.13/codemetagenerator_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "8dfa1ae2e372a3f4e83e673bd5fed4c36497385a8fcbeab97041023c851ea6f2"

      def install
        bin.install "codemetagenerator"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cacoco/codemetagenerator/releases/download/v0.47.13/codemetagenerator_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "78d96d3940448fb322dab36464946cda08a496c25029d95a0b2a647f738716c7"

      def install
        bin.install "codemetagenerator"
      end
    end
  end
end
