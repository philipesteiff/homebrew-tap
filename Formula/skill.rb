class Skill < Formula
  desc "CLI for managing skills"
  homepage "https://github.com/philipesteiff/skill"
  url "https://github.com/philipesteiff/skill/releases/download/v0.1.0/skill-darwin-arm64.tar.gz"
  sha256 "7766eb70bcef373a17454d959bdbd6c38481affe22be4deb0bc398529913887b"
  version "0.1.0"

  def install
    bin.install "skill"
  end
end
