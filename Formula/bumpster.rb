class Bumpster < Formula
  desc "Release versions with a guarded Git workflow"
  homepage "https://phoenixweiss.github.io/Bumpster/"
  url "https://github.com/phoenixweiss/Bumpster/releases/download/v1.2.2/bumpster-1.2.2.tar.gz"
  sha256 "64f2b82814d186dee9c43065fe4c5a7f8bce5cbeb052f5ad8e1ec494dac8bc63"
  license "MIT"

  def install
    libexec.install "LICENSE", "VERSION", "bumpster.sh", "config.sh", "lib"
    chmod 0755, libexec/"bumpster.sh"

    (bin/"bumpster").write_env_script libexec/"bumpster.sh",
                                           BUMPSTER_HOME:           libexec,
                                           BUMPSTER_INSTALL_METHOD: "homebrew"
    bin.install_symlink "bumpster" => "bump"
  end

  test do
    assert_match "Bumpster version: #{version}", shell_output("#{bin}/bumpster --version")
    assert_match "Usage:  bumpster [action]", shell_output("#{bin}/bumpster --help")
    assert_match "Use 'brew upgrade bumpster' to update.",
                 shell_output("#{bin}/bumpster --update 2>&1", 1)
  end
end
