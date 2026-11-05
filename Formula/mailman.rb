class Mailman < Formula
  desc "CLI to manage emails (AXE fork of Himalaya)"
  homepage "https://github.com/memjar/mailman"
  version "2.2.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/memjar/mailman/releases/download/v#{version}/mailman.aarch64-darwin.tgz"
      sha256 "82b21e4c00c98ddfbf98dce7d8e9f9e5a214cfb7b04c12097a11840a812871bb"
    end
    on_intel do
      url "https://github.com/memjar/mailman/releases/download/v#{version}/mailman.x86_64-darwin.tgz"
      sha256 "a19c084a09aec8d53467d1096a8131514e144a87f2d53096c9d814cdbb0ce4d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/memjar/mailman/releases/download/v#{version}/mailman.aarch64-linux.tgz"
      sha256 "a8ef2a9308d4ad50946f66316eb108d68d68d3f67820a768bd01024ba92ce59b"
    end
    on_intel do
      url "https://github.com/memjar/mailman/releases/download/v#{version}/mailman.x86_64-linux.tgz"
      sha256 "1a8c199a5ad92f33fff2b0d9ca544bb9144dbcbdb2a25363878401fce98ad770"
    end
  end

  def install
    bin.install "mailman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mailman --version")
  end
end
