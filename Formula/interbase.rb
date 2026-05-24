# typed: false
# frozen_string_literal: true

class Interbase < Formula
  desc "Interbase CLI"
  homepage "https://github.com/agentsorchestrationcompany/cli"
  version "0.11.0"
  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.11.0/interbase-darwin-x64.zip"
      sha256 "dcf11be136e030e43b588f737ab9507fec7d99beb59840afa90046133cd4c348"
    end

    if Hardware::CPU.arm?
      url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.11.0/interbase-darwin-arm64.zip"
      sha256 "d00a625ef79b16f89ce7f3e577c08d9ea4644724e5560eae672885818edc819a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.11.0/interbase-linux-x64.tar.gz"
      sha256 "7b749f1e353d24af816ef3161ff0d29a67038f3a5bc58b78a9856c83e331f979"
    end

    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.11.0/interbase-linux-arm64.tar.gz"
      sha256 "9e4a5eb0bfb3b3808c1259c690af5d44e89f94055d7f2aba5c67e9a570d790fc"
    end
  end

  def install
    bin.install "interbase"
  end
end

