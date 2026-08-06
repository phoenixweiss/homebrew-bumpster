class Bumpster < Formula
  desc "Release versions with a guarded Git workflow"
  homepage "https://phoenixweiss.github.io/Bumpster/"
  url "https://github.com/phoenixweiss/Bumpster/releases/download/v1.2.0/bumpster-1.2.0.tar.gz"
  sha256 "4e6d8ed3c41a4086345b961b5d0d71ec4ae09e8abbfbb32512a9bccdba7c5f7f"
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
