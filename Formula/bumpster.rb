class Bumpster < Formula
  desc "Release versions with a guarded Git workflow"
  homepage "https://phoenixweiss.github.io/Bumpster/"
  url "https://github.com/phoenixweiss/Bumpster/releases/download/v1.1.0/bumpster-1.1.0.tar.gz"
  sha256 "c3f8d457b8232d00e183775bff8343f58b6b6a6d5c08ffa1ebbbf8abebaebe72"
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
