class Joflux < Formula
  desc "Bulk migration workflow for moving GitHub organizations to Forgejo or Codeberg"
  homepage "https://github.com/netspeedy/joflux"
  url "https://github.com/netspeedy/joflux/releases/download/v0.1.7/joflux-0.1.7-py3-none-any.whl"
  sha256 "aec3e750d64876ef73e3a62cb1fc0c910dd632dc2a63e3874721994c6a91a602"
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
