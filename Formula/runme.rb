# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runme < Formula
  desc "Execute your runbooks, docs, and READMEs."
  homepage "https://runme.dev"
  version "3.2.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://download.stateful.com/runme/3.2.4/runme_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "2c2446784b5e90b4b20ed973a3e4f0d5259b4bae5dc641165ae1437989dcd7b5"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
    if Hardware::CPU.arm?
      url "https://download.stateful.com/runme/3.2.4/runme_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3e10852287938acf7663562937a1430a7b3feed4da0fe9ec6300d75d81b8402f"

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
      url "https://download.stateful.com/runme/3.2.4/runme_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e47ac07ece1ca9cea857729cfed3cb5a9a6f3eb535d24e488303c2ae5ed7fb70"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://download.stateful.com/runme/3.2.4/runme_linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "16347e04c6a20b52a95b20867e5ffcc6b2cdff4f5e5f6257e9817d703fa4e4fa"

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
