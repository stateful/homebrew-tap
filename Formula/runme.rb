# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runme < Formula
  desc "Execute your runbooks, docs, and READMEs."
  homepage "https://runme.dev"
  version "3.8.4"

  on_macos do
    on_intel do
      url "https://download.stateful.com/runme/3.8.4/runme_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "211c9f4537b5b39434e9054ce49065535348933988bfc16b2fb1f64e0c859b74"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
    on_arm do
      url "https://download.stateful.com/runme/3.8.4/runme_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b77d10824afa6f4a25b8d10193fd02b48e41a3ca45c64da59ebc506000e0a86c"

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
        url "https://download.stateful.com/runme/3.8.4/runme_linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "bd0bea654410d26619a7f813f337bb0f4858519bcbc773b240fc14f9401b5128"

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
        url "https://download.stateful.com/runme/3.8.4/runme_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "f8136d91f0723d3974693dbda1971130f4a3ac903e419ca165e59e4492dc5829"

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
