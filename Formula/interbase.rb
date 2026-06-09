# typed: false
# frozen_string_literal: true

class Interbase < Formula
  desc "Interbase CLI"
  homepage "https://github.com/agentsorchestrationcompany/interbase"
  version "0.12.1"
  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.12.1/interbase-darwin-x64.zip"
      sha256 "d864760e4c69efc3d111e753aa238fa59b9d3dba80a1546eadca33606bd13436"
    end

    if Hardware::CPU.arm?
      url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.12.1/interbase-darwin-arm64.zip"
      sha256 "9db370d9c53967506940ab294c010a59f89afc1dceb4c8b4341f912f063aae3e"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.12.1/interbase-linux-x64.tar.gz"
      sha256 "a8d49e04e24310b2d3fbe58040f3129ce881d2d70fa49ee6f55a78c270aa9386"
    end

    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.12.1/interbase-linux-arm64.tar.gz"
      sha256 "be9f88e2196ed1987d55b5853cdacb5cdf1d183b90193a11ae78518a095faab3"
    end
  end

  def install
    bin.install "interbase"
  end
end

