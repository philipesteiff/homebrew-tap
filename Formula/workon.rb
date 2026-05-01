class Workon < Formula
  desc "CLI and compact TUI for creating agent-ready context workspaces"
  homepage "https://github.com/philipesteiff/workon"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/philipesteiff/workon/releases/download/v0.1.3/workon-darwin-arm64.tar.gz"
      sha256 "e112e30e633db3c97b66b4f6eff86f78ff705fe34964ee159d198f7cf68d3ee3"
    end

    on_intel do
      url "https://github.com/philipesteiff/workon/releases/download/v0.1.3/workon-darwin-x86_64.tar.gz"
      sha256 "0690a3e88e5bf61c2cedf25f834921b57e639afbc9e0f59dee1f230c6537af91"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/philipesteiff/workon/releases/download/v0.1.3/workon-linux-x86_64.tar.gz"
      sha256 "7d40aad3578391c5a85aeab99698ebf8e3b0906aef65c4eeb45763c0b99f6ee4"
    end
  end

  def install
    bin.install "wo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wo version")
  end

  def caveats
    "Run wo install-shell to enable folder switching."
  end
end
