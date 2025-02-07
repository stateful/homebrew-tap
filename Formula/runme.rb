# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runme < Formula
  desc "Execute your runbooks, docs, and READMEs."
  homepage "https://runme.dev"
  version "3.11.0"

  on_macos do
    on_intel do
      url "https://download.stateful.com/runme/3.11.0/runme_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "9f7472190847da88e523fe663c92b85f01c35d0cd26058c509cfddbd76a2ff3c"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
    on_arm do
      url "https://download.stateful.com/runme/3.11.0/runme_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6886a00f3f01e578d2459c0fd1c097c3f79530bd7cf510ed55a1d7a2ea0130f0"

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
        url "https://download.stateful.com/runme/3.11.0/runme_linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "6af49be1fe9fad6d72b48fa66e19d039d2ce1f1db4b7d1b6ed4d9b2cbced404d"

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
        url "https://download.stateful.com/runme/3.11.0/runme_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "1b06f89f1148f99d84dd34f1d5b4fb2eb0162c8ca0e8dead9a4f4b55cdaeb1fe"

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
