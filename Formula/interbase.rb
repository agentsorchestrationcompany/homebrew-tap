class Interbase < Formula
  desc "Interbase command-line interface"
  homepage "https://github.com/agentsorchestrationcompany/cli"
  url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.0.6/interbase-cli-v0.0.6-homebrew.tar.gz"
  sha256 "ecb0dad48082232375882240e492ce111923c8c6782384c8955c2b904f13f023"
  version "0.0.6"
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
