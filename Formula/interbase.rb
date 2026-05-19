# typed: false
# frozen_string_literal: true

class Interbase < Formula
  desc "Interbase CLI"
  homepage "https://github.com/agentsorchestrationcompany/cli"
  version "0.0.1"
  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.0.1/interbase-darwin-x64.zip"
      sha256 "9eb9d7a13da98ccfcb4ba9fc85b1e6964de7c931990482a091fc522e6a2c5ae8"
    end

    if Hardware::CPU.arm?
      url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.0.1/interbase-darwin-arm64.zip"
      sha256 "79d9e14f7e1d931dfd461f720d205609927074b1d08025243f4ac6df6a03ea16"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.0.1/interbase-linux-x64.tar.gz"
      sha256 "b14b3798c1cb2dd1db1098a1d7ad9f8fcef47f132e4f0dc80b2f2fffbb6eb7e2"
    end

    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.0.1/interbase-linux-arm64.tar.gz"
      sha256 "2a1b8c2164add0a89ce8d2e4e2a765a7a4cc4ead04ce22f701277fd7018140ab"
    end
  end

  def install
    bin.install "interbase"
  end
end

