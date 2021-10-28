# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stateful < Formula
  desc ""
  homepage ""
  version "0.0.5-rc1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/stateful-cli-artifacts-adamb/0.0.5-rc1/stateful_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a57ed3fca10f937113f5563c5deabcb4f7ca4f7c0e91b719c1d513068a78d0c4"

      def install
        bin.install "stateful"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/stateful-cli-artifacts-adamb/0.0.5-rc1/stateful_darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "c01fd0a56abf447b6a122a16be93b787ce214bd6f466fd0eb2680d4afcb5b42a"

      def install
        bin.install "stateful"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/stateful-cli-artifacts-adamb/0.0.5-rc1/stateful_linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a287c87dc0e7b12d9906d6352836e10f3098b43eb0daac5344a80e392a6a28b8"

      def install
        bin.install "stateful"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/stateful-cli-artifacts-adamb/0.0.5-rc1/stateful_linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "d6af02f96544f438ff55db59c8a7858737a9fe2d3bf68a2ff5ac82aa8294a9db"

      def install
        bin.install "stateful"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/stateful-cli-artifacts-adamb/0.0.5-rc1/stateful_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "2e451c8eb143a7a92d16a315544cc628ccd01e629fb3813adf3693dc970867e5"

      def install
        bin.install "stateful"
      end
    end
  end
end
