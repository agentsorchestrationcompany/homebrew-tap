class Interbase < Formula
  desc "Interbase command-line interface"
  homepage "https://github.com/agentsorchestrationcompany/cli"
  url "https://github.com/agentsorchestrationcompany/cli/releases/download/cli-v0.0.1/interbase-cli-v0.0.1-homebrew.tar.gz"
  sha256 "95955346925e269a59e61ef1bf222e8d5b03c09c506bd8c5c23f56de4f1784f9"
  version "0.0.1"
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
