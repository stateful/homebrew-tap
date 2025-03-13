# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runme < Formula
  desc "Execute your runbooks, docs, and READMEs."
  homepage "https://runme.dev"
  version "3.12.6"

  on_macos do
    on_intel do
      url "https://download.stateful.com/runme/3.12.6/runme_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "09d047591284df3548e1a69ac1e08dce028e43d1d32a994c8d61d4664eee1da8"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
    on_arm do
      url "https://download.stateful.com/runme/3.12.6/runme_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b9d7f5f1f15cdee45b5ebc5907b630c33a367c5a516582664b527ade83e42fee"

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
        url "https://download.stateful.com/runme/3.12.6/runme_linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "6a2eff8d9bf8814245c17d9b1c4a588d77adb1b1e3cfe00190c87b0ecbdffc73"

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
        url "https://download.stateful.com/runme/3.12.6/runme_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "d89f5d057ae7c83e1d45d6d0a8e6e944510372b044f64333a87da4e6fb2ba66d"

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
