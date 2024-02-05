# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Codemetagenerator < Formula
  desc "A CodeMeta project description generator written in Go."
  homepage "https://angstrom.io/codemetagenerator"
  version "0.47.10"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/cacoco/codemetagenerator/releases/download/v0.47.10/codemetagenerator_Darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "83904c9b73108ca410ac3e0b373dfb55d5a20b320e9cda58089557b98543bb63"

    def install
      bin.install "codemetagenerator"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/cacoco/codemetagenerator/releases/download/v0.47.10/codemetagenerator_Linux_armv7.tar.gz", using: CurlDownloadStrategy
      sha256 "6a737cbfc6e385870e8899b46503d011b553fcc90b9ace8009b5e0304875fe63"

      def install
        bin.install "codemetagenerator"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cacoco/codemetagenerator/releases/download/v0.47.10/codemetagenerator_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0f2525add28e309e660c0db7e465e565a957b9141456ebef469c8292d6144358"

      def install
        bin.install "codemetagenerator"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cacoco/codemetagenerator/releases/download/v0.47.10/codemetagenerator_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "253db50e97f6306d3bcd904f2cf80dd86db57f06d74de2f5a0fbfd05d005f2f0"

      def install
        bin.install "codemetagenerator"
      end
    end
  end
end
