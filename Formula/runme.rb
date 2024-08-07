# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runme < Formula
  desc "Execute your runbooks, docs, and READMEs."
  homepage "https://runme.dev"
  version "3.5.0"

  on_macos do
    on_intel do
      url "https://download.stateful.com/runme/3.5.0/runme_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "c36aa0bc8001e6d2ea33ad4e6cdc3bb6f30dae5646ddfe3cd0c6a9aa749ac5e4"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
    on_arm do
      url "https://download.stateful.com/runme/3.5.0/runme_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ecd0a09fb8f987820098354c9a23336c26d2ec52bd9524ae136279596643bdea"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://download.stateful.com/runme/3.5.0/runme_linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "f8a1247f0038ab9d74c874f3e801f44d7f0e1d68f436060878d20d132cad5882"

        def install
          bin.install "runme"
          (bash_completion/"runme").write `#{bin}/runme completion bash`
          (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
          (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://download.stateful.com/runme/3.5.0/runme_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "7a8976d1b1c6cc1cc57aa94ae6e779a8db1933a21842fb80ed06b816e1cd1557"

        def install
          bin.install "runme"
          (bash_completion/"runme").write `#{bin}/runme completion bash`
          (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
          (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
        end
      end
    end
  end

  test do
    assert_match "runme #{version}", shell_output("#{bin}/runme version")
  end
end
