class Interbase < Formula
  desc "Interbase command-line interface"
  homepage "https://github.com/agentsorchestrationcompany/cli"
  url "https://github.com/agentsorchestrationcompany/cli/releases/download/v0.0.7/interbase-cli-v0.0.7-homebrew.tar.gz"
  sha256 "ef8ce87f28739123da363227e498c925719a1c48a05eae8c5a9f7f6ffcd95c58"
  version "0.0.7"
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
