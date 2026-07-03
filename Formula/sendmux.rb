class Sendmux < Formula
  desc "Command-line access to Sendmux APIs"
  homepage "https://sendmux.ai/docs"
  url "https://registry.npmjs.org/@sendmux/cli/-/cli-1.2.0.tgz"
  sha256 "f4e7d838f3cd9800cbab4c89304dd117634b6b27aa3c98f97be360f463853f79"
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
