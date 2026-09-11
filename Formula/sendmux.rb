class Sendmux < Formula
  desc "Command-line access to Sendmux APIs"
  homepage "https://sendmux.ai/docs"
  url "https://registry.npmjs.org/@sendmux/cli/-/cli-1.6.0.tgz"
  sha256 "910a09ba643018d63a8d383a69ecb72431adc860b62a6f3331f846e9ff87d733"
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
