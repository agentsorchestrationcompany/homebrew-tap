# typed: false
# frozen_string_literal: true

class Interbase < Formula
  desc "Interbase CLI"
  homepage "https://github.com/agentsorchestrationcompany/interbase"
  version "0.14.0"
  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.14.0/interbase-darwin-x64.zip"
      sha256 "0c42914511c595607484e27c53b9a3ae6b2785156e9dc3dd2ed1eb97e3658df6"
    end

    if Hardware::CPU.arm?
      url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.14.0/interbase-darwin-arm64.zip"
      sha256 "b1f6ad8f73703dc9a91a08d85b367a24cabbabdafbc788328bae8ee526626a21"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.14.0/interbase-linux-x64.tar.gz"
      sha256 "28a0ec81cb660d15a7ad6d756a9397987319c30dbee4a481d81caa61e47e6af9"
    end

    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.14.0/interbase-linux-arm64.tar.gz"
      sha256 "fed0116369298631739e6476571f2c72f31a0b5558751cb4531fcca351006447"
    end
  end

  def install
    bin.install "interbase"
  end
end

