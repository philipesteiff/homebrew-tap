class Skill < Formula
  desc "CLI for managing skills"
  homepage "https://github.com/philipesteiff/skill"
  url "https://github.com/philipesteiff/skill/releases/download/v0.1.1/skill-darwin-arm64.tar.gz"
  sha256 "b34803afae65e1085f4a7d0b244be0887dcb3c07007afc45611494ad8693a22d"
  version "0.1.1"

  def install
    bin.install "skill"
  end
end
