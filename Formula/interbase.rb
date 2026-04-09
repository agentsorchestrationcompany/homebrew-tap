class Interbase < Formula
  desc "Interbase command-line interface"
  homepage "https://github.com/agentsorchestrationcompany/interbase"
  url "https://github.com/agentsorchestrationcompany/interbase/releases/download/v0.0.5/interbase-cli-v0.0.5-homebrew.tar.gz"
  sha256 "1e95bf53479af6f75de7933ec04a40030d7c31155b3ac06990e8bbe0a28f5f37"
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
