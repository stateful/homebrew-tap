# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runme < Formula
  desc "Execute your runbooks, docs, and READMEs."
  homepage "https://runme.dev"
  version "3.15.0"

  on_macos do
    on_intel do
      url "https://download.stateful.com/runme/3.15.0/runme_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "330b8d236bb741879ce42f67b87d39136ce494ac30fb8dbc6d9c2b6760bd4fbf"

      def install
        bin.install "runme"
        (bash_completion/"runme").write `#{bin}/runme completion bash`
        (fish_completion/"runme.fish").write `#{bin}/runme completion fish`
        (zsh_completion/"_runme").write `#{bin}/runme completion zsh`
      end
    end
    on_arm do
      url "https://download.stateful.com/runme/3.15.0/runme_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1d09ab257a499a4d219820990a090dd0e1440bea23189be71d1868e7a3ab5b2d"

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
        url "https://download.stateful.com/runme/3.15.0/runme_linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "c39c2511529b40ac45df2eb8ace4c9e3637af1d440976acd04ebbf158364c7f7"

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
        url "https://download.stateful.com/runme/3.15.0/runme_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "2f6d2c227ba97fa78b650151e9951f632285a6ff6675c000b57c77b7b7196989"

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
