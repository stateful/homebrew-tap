# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runme < Formula
  desc "Execute your runbooks, docs, and READMEs."
  homepage "https://runme.dev"
  version "3.10.0"

  on_macos do
    on_intel do
      url "https://download.stateful.com/runme/3.10.0/runme_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "7d0bf4f139812ddcd6e6771615d4d8e69d23885345d73c3552a0e0fa554bce53"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
    on_arm do
      url "https://download.stateful.com/runme/3.10.0/runme_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f75a81e1dce13b57aa7442495790cda9695eb5f9a1050ddaa737487013c849a7"

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
        url "https://download.stateful.com/runme/3.10.0/runme_linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "26880cd1d01c4b4a772945a00481f1fc3a35a11f34e32940f4a5c4da280f392d"

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
        url "https://download.stateful.com/runme/3.10.0/runme_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "1918ca93935f4b9a615f52a835cddd5f2de05f0ae34d5d33ee330de179a7e123"

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
