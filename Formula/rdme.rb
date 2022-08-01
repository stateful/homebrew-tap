# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rdme < Formula
  desc "Execute code snippets directly from Markdown files."
  homepage "https://stateful.com"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.stateful.com/rdme/0.1.5/rdme_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "6dd116a2165b68dc340b50b17a4a9e8f25d4d928540ac23766fd96dd97f1d265"

      def install
        bin.install "rdme"
        (bash_completion/"rdme").write `#{bin}/rdme completion bash`
        (fish_completion/"rdme.fish").write `#{bin}/rdme completion fish`
        (zsh_completion/"_rdme").write `#{bin}/rdme completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://download.stateful.com/rdme/0.1.5/rdme_darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "ed373a9eff70c1cb53b157ee7d644d763d705f932d47c82a8d822125b9895365"

      def install
        bin.install "rdme"
        (bash_completion/"rdme").write `#{bin}/rdme completion bash`
        (fish_completion/"rdme.fish").write `#{bin}/rdme completion fish`
        (zsh_completion/"_rdme").write `#{bin}/rdme completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://download.stateful.com/rdme/0.1.5/rdme_linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "e7ea3a9f2318fba63891499c67edb8b06374c50a9449b1f998fdf2631d9bb2db"

      def install
        bin.install "rdme"
        (bash_completion/"rdme").write `#{bin}/rdme completion bash`
        (fish_completion/"rdme.fish").write `#{bin}/rdme completion fish`
        (zsh_completion/"_rdme").write `#{bin}/rdme completion zsh`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://download.stateful.com/rdme/0.1.5/rdme_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "60e30b6f068dbb8b6699d94ff73ae6fbbe39e355ab4b97bb8e99ac8fc4234aa5"

      def install
        bin.install "rdme"
        (bash_completion/"rdme").write `#{bin}/rdme completion bash`
        (fish_completion/"rdme.fish").write `#{bin}/rdme completion fish`
        (zsh_completion/"_rdme").write `#{bin}/rdme completion zsh`
      end
    end
  end

  test do
    assert_match "rdme #{version}", shell_output("#{bin}/rdme version")
  end
end
