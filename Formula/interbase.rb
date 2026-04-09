class Interbase < Formula
  desc "Interbase command-line interface"
  homepage "https://github.com/agentsorchestrationcompany/cli"
  url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.0.8/interbase-cli-v0.0.8-homebrew.tar.gz"
  sha256 "16ba327d66af2773a04da2b549d57dbf74c7e16a30796002dabf8b335237b9df"
  version "0.0.8"
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
