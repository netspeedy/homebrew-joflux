class Joflux < Formula
  desc "Bulk migration workflow for moving GitHub organizations to Forgejo or Codeberg"
  homepage "https://github.com/netspeedy/joflux"
  license "MIT"
  head "https://github.com/netspeedy/joflux.git", branch: "main"

  depends_on "python@3.13"
  depends_on "python-setuptools-scm" => :build

  def install
    python = Formula["python@3.13"].opt_bin/"python3.13"
    ENV["SETUPTOOLS_SCM_PRETEND_VERSION"] = "0.0.0-head"
    system python, "-m", "pip", "install", "--no-deps", "--no-build-isolation", "--prefix=#{libexec}", "."
    bin.install_symlink libexec/"bin/joflux"
  end

  test do
    assert_match "joflux", shell_output("#{bin}/joflux --version")
    assert_match "export", shell_output("#{bin}/joflux --help")
  end
end
