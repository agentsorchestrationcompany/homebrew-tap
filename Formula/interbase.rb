# typed: false
# frozen_string_literal: true

class Interbase < Formula
  desc "Interbase CLI"
  homepage "https://github.com/agentsorchestrationcompany/cli"
  version "0.10.0"
  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.10.0/interbase-darwin-x64.zip"
      sha256 "c739fe5eaef9a5de87594e9b58b0ced4d3ad76f2edd8d386954d7c90724462fe"
    end

    if Hardware::CPU.arm?
      url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.10.0/interbase-darwin-arm64.zip"
      sha256 "b8e9f9e62e559e14087c7e7fc06c5eefb629478693f46c344d862cef1127fa4e"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.10.0/interbase-linux-x64.tar.gz"
      sha256 "44d66ead3c43be41a0a8cffd6c8ef7a722375507d3183834f905df40126426f9"
    end

    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.10.0/interbase-linux-arm64.tar.gz"
      sha256 "ba45b6ba37529125791fabadd8c4580ab8ef1b7a260cb5d29e7a4bd532e51a6a"
    end
  end

  def install
    bin.install "interbase"
  end
end

