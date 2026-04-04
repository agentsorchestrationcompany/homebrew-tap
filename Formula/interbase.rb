class Interbase < Formula
  desc "Interbase command-line interface"
  homepage "https://github.com/agentsorchestrationcompany/cli"
  url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.0.2/interbase-cli-v0.0.2-homebrew.tar.gz"
  sha256 "6168fe9e95ccb0a4b3c782ea14e7d0b2bc53d9dd4d0f90d791e18a6969ade225"
  version "0.0.2"
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
