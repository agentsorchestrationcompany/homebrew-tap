class Interbase < Formula
  desc "Interbase command-line interface"
  homepage "https://github.com/agentsorchestrationcompany/cli"
  url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.0.4/interbase-cli-v0.0.4-homebrew.tar.gz"
  sha256 "751283bdbe18c4c3047c1d6f3a59afd27f67269d5ce8bac826ad6bcf09db3dc0"
  version "0.0.4"
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
