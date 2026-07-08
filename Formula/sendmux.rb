class Sendmux < Formula
  desc "Command-line access to Sendmux APIs"
  homepage "https://sendmux.ai/docs"
  url "https://registry.npmjs.org/@sendmux/cli/-/cli-1.3.0.tgz"
  sha256 "41bba371c54a11a608a8af66743a337c3e12e9de232b581beb0a2d0b1cef7619"
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
