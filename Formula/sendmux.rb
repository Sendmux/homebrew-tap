class Sendmux < Formula
  desc "Command-line access to Sendmux APIs"
  homepage "https://sendmux.ai/docs"
  url "https://registry.npmjs.org/@sendmux/cli/-/cli-1.7.0.tgz"
  sha256 "f31c14195a4b64b490bcfe9ebcd1b26d4c8f66531224c8adb26516b1e40621d7"
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
