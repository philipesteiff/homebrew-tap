class Workon < Formula
  desc "CLI and compact TUI for creating agent-ready context workspaces"
  homepage "https://github.com/philipesteiff/workon"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/philipesteiff/workon/releases/download/v0.1.1/workon-darwin-arm64.tar.gz"
      sha256 "54e0720104dd12775d9fc0caceb424002340a9aedabace2e091f4f6c73be14fd"
    end

    on_intel do
      url "https://github.com/philipesteiff/workon/releases/download/v0.1.1/workon-darwin-x86_64.tar.gz"
      sha256 "ea755d9fc938adf7dff54f66fdf3dba9d1542e54955d881cb03a8034cf82971c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/philipesteiff/workon/releases/download/v0.1.1/workon-linux-x86_64.tar.gz"
      sha256 "4c349fcb9069ac7f7e8f66af4c6b313044d7f8f845c8fead709c374d6ff3a608"
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
