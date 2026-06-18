class Sendmux < Formula
  desc "Command-line access to Sendmux APIs"
  homepage "https://sendmux.ai/docs"
  url "https://registry.npmjs.org/@sendmux/cli/-/cli-1.0.0.tgz"
  sha256 "c780dba5206a976ff1c5a32fcd036a26681e6fdd8ef323a97ae92dfcc0d41d72"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sendmux --version")
    assert_match "Sendmux", shell_output("#{bin}/sendmux --help")
  end
end
