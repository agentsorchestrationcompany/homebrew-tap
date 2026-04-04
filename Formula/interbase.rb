class Interbase < Formula
  desc "Interbase command-line interface"
  homepage "https://github.com/agentsorchestrationcompany/cli"
  url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.0.3/interbase-cli-v0.0.3-homebrew.tar.gz"
  sha256 "ec1006912d3b458940a4fa258749d5fedeb2c4a185d3e0f17819842ada0742c9"
  version "0.0.3"
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
