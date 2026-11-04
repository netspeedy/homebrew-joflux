class Joflux < Formula
  desc "Bulk migration workflow for moving GitHub organizations to Forgejo or Codeberg"
  homepage "https://github.com/netspeedy/joflux"
  url "https://github.com/netspeedy/joflux/releases/download/v0.1.4/joflux-0.1.4-py3-none-any.whl"
  sha256 "fcb9e370dd0d55415dd681399c4aee28a98898a605f426d777f51b219e3036b7"
  license "MIT"

  depends_on "python@3.13"

  def install
    python = formula_opt_bin("python@3.13")/"python3.13"
    wheel = Dir["joflux-*.whl"].first
    system python, "-m", "pip", "install", "--no-deps", "--prefix=#{libexec}", wheel
    site_packages = libexec/Language::Python.site_packages(python)
    (bin/"joflux").write_env_script libexec/"bin/joflux", PYTHONPATH: site_packages
  end

  test do
    assert_match "joflux", shell_output("#{bin}/joflux --version")
    assert_match "export", shell_output("#{bin}/joflux --help")
    assert_match "config file not found",
                 shell_output("#{bin}/joflux --config #{testpath}/missing.toml export 2>&1", 2)
  end
end
