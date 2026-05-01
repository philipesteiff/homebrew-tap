class Workon < Formula
  desc "CLI and compact TUI for creating agent-ready context workspaces"
  homepage "https://github.com/philipesteiff/workon"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/philipesteiff/workon/releases/download/v0.1.2/workon-darwin-arm64.tar.gz"
      sha256 "90df333f3ca142d45aef81309cd07daa7aaff0489feced0e1832ba1b6715fae7"
    end

    on_intel do
      url "https://github.com/philipesteiff/workon/releases/download/v0.1.2/workon-darwin-x86_64.tar.gz"
      sha256 "a1833505285de70916b368984d8e1a5b1dd6377a50ac20214f34f4cc5091424d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/philipesteiff/workon/releases/download/v0.1.2/workon-linux-x86_64.tar.gz"
      sha256 "e650b2d363fa4efcbaba4accdef6e7a0e768e5ef146d7a3c3caaccd1f1792ab5"
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
