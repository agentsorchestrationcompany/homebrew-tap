class Interbase < Formula
  desc "Interbase command-line interface"
  homepage "https://github.com/agentsorchestrationcompany/cli"
  url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.0.9/interbase-cli-v0.0.9-homebrew.tar.gz"
  sha256 "70f59a0ba2f06b300f7b25546adf7197987ce3a99ae2a3a5a1ee0d092a22aca3"
  version "0.0.9"
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
