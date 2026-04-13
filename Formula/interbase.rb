class Interbase < Formula
  desc "Interbase command-line interface"
  homepage "https://github.com/agentsorchestrationcompany/cli"
  url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.0.10/interbase-cli-v0.0.10-homebrew.tar.gz"
  sha256 "d1d9f9f71295e58bca1a8dd2ce0b9d354f70bbd8c75fec70ed12f28b7c0c8a21"
  version "0.0.10"
  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/interbase"
  end

  test do
    help = shell_output("#{bin}/interbase --help")
    assert_match "interbase login", help
    assert_match "interbase setup", help
  end
end
