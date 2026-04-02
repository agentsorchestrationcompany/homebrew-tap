class Interbase < Formula
  desc "Interbase command-line interface"
  homepage "https://github.com/agentsorchestrationcompany/interbase"
  url "https://github.com/agentsorchestrationcompany/interbase/releases/download/cli-v0.0.1/interbase-cli-v0.0.1-homebrew.tar.gz"
  sha256 "d5aac176cea241f6e05944f1a1bf3ca4e218e849a631dddae3c5d3b6ae39e8d1"
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
