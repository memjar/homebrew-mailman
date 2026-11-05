class Mailman < Formula
  desc "CLI to manage emails (AXE fork of Himalaya)"
  homepage "https://github.com/memjar/mailman"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/memjar/mailman/releases/download/v2.2.2/mailman.aarch64-darwin.tgz"
      sha256 "2186ba8e9e1a902da0bb964dc918e3f394ea36e6745ab37d9ea94a4cd8b6006d"
    end
    on_intel do
      url "https://github.com/memjar/mailman/releases/download/v2.2.2/mailman.x86_64-darwin.tgz"
      sha256 "3cb1e9b28df1e03f65f6e3939cb05118872b579860b16853529077beb659f4ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/memjar/mailman/releases/download/v2.2.2/mailman.aarch64-linux.tgz"
      sha256 "c37a0fcdba950a8d9e1f4b9e83bf824f42de9910c9d98fb10061bf3128d62516"
    end
    on_intel do
      url "https://github.com/memjar/mailman/releases/download/v2.2.2/mailman.x86_64-linux.tgz"
      sha256 "aa29a3bcc28ebde9d54cce9b495b7ab5c2a72be79ccad71c22fb38212e311016"
    end
  end

  def install
    bin.install "mailman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mailman --version")
  end
end
