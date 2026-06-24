class Joflux < Formula
  desc "Bulk migration workflow for moving GitHub organizations to Forgejo or Codeberg"
  homepage "https://github.com/netspeedy/joflux"
  url "https://github.com/netspeedy/joflux/releases/download/v0.1.1/joflux-0.1.1-py3-none-any.whl"
  sha256 "cb9168b0655f276eb61e9fa8ffcfb3ef6ae40dfcf8cf37274fc4b9867884fad9"
  license "MIT"

  depends_on "python@3.13"

  def install
    python = Formula["python@3.13"].opt_bin/"python3.13"
    wheel = Dir["joflux-*.whl"].first
    system python, "-m", "pip", "install", "--no-deps", "--prefix=#{libexec}", wheel
    bin.install_symlink libexec/"bin/joflux"
  end

  test do
    assert_match "joflux", shell_output("#{bin}/joflux --version")
    assert_match "export", shell_output("#{bin}/joflux --help")
  end
end
