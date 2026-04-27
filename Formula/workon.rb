class Workon < Formula
  desc "CLI and compact TUI for creating agent-ready context workspaces"
  homepage "https://github.com/philipesteiff/workon"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/philipesteiff/workon/releases/download/v0.1.0/workon-darwin-arm64.tar.gz"
      sha256 "f9b422efd631226d1ca6e3fde884e4c590956f327290246f9df4109a3e80a35b"
    end

    on_intel do
      url "https://github.com/philipesteiff/workon/releases/download/v0.1.0/workon-darwin-x86_64.tar.gz"
      sha256 "8e770fd927772271c751398325412b3ab42697330e1a377c05b2d581eca0839f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/philipesteiff/workon/releases/download/v0.1.0/workon-linux-x86_64.tar.gz"
      sha256 "6f41b0fa4a28b8d72625e55e3acbe68ef352d61c43085686fde8d8f94a01e39a"
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
