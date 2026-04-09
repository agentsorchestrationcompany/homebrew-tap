class Interbase < Formula
  desc "Interbase command-line interface"
  homepage "https://github.com/agentsorchestrationcompany/interbase"
  url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.0.5/interbase-cli-v0.0.5-homebrew.tar.gz"
  sha256 "6744dce44fa3a377b1b75a1ea228b703dee55973203493e2ea31aff88e7851ef"
  version "0.0.5"
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
