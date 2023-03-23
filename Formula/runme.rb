# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runme < Formula
  desc "Execute code snippets directly from Markdown files."
  homepage "https://stateful.com"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://download.stateful.com/runme/0.7.0/runme_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "6a6b4213356a901c47a11a5623067fbb68d79164ce6d66feaaac5d1e605e4495"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
    if Hardware::CPU.arm?
      url "https://download.stateful.com/runme/0.7.0/runme_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "40b97aee14b7c335909de2641571cc61a3fe415dd107889531f5d4ee357e4628"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://download.stateful.com/runme/0.7.0/runme_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "058ed6e42ef35a7a1a8448f8f13d802d900255438de22e012b57d723112d7736"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://download.stateful.com/runme/0.7.0/runme_linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "016ab1d671c351d2247a27918e1003c5174c3cb7156fb02fdb337ce366b812fe"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
  end

  test do
    assert_match "runme #{version}", shell_output("#{bin}/runme version")
  end
end
