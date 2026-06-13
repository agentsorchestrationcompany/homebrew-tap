# typed: false
# frozen_string_literal: true

class Interbase < Formula
  desc "Interbase CLI"
  homepage "https://github.com/agentsorchestrationcompany/interbase"
  version "0.13.0"
  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.13.0/interbase-darwin-x64.zip"
      sha256 "3abe185868b45cc8f2288b4bf459a8b1cbf00dbbf64ecf85285faa62491ba8ee"
    end

    if Hardware::CPU.arm?
      url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.13.0/interbase-darwin-arm64.zip"
      sha256 "bd6c77b37c6d4d2960760621cca0aa5a37857d5cdb19cf665bb79989f5aa6cde"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.13.0/interbase-linux-x64.tar.gz"
      sha256 "a51963091ca39c40685de3f5df0143f5d97ceffe3dbdc99f92bc12fa459af592"
    end

    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.13.0/interbase-linux-arm64.tar.gz"
      sha256 "2b2db24877a53acefe7f86807f630539cb31f70fc89e1c253000dfc8ddd6352a"
    end
  end

  def install
    bin.install "interbase"
  end
end

