# typed: false
# frozen_string_literal: true

class Interbase < Formula
  desc "Interbase CLI"
  homepage "https://github.com/agentsorchestrationcompany/interbase"
  version "0.12.0"
  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.12.0/interbase-darwin-x64.zip"
      sha256 "1466a730a403f4d371ae99894d3c8965e9692756533f4420b7ae088706fa1ccd"
    end

    if Hardware::CPU.arm?
      url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.12.0/interbase-darwin-arm64.zip"
      sha256 "2cdebe788f21317f3f4c0cb8839200c5328c889a784fac83e6c3189b013d149f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.12.0/interbase-linux-x64.tar.gz"
      sha256 "220470dd9233cb67522a912ea58fd0fa6611e68d093eb73849d6443ecbd846d6"
    end

    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.12.0/interbase-linux-arm64.tar.gz"
      sha256 "f5e7e29e4a81f713bcfae5acdd3ec95deeb603d42d67e3b27958e54b3185bf00"
    end
  end

  def install
    bin.install "interbase"
  end
end

