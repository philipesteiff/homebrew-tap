class Skill < Formula
  desc "CLI for managing skills"
  homepage "https://github.com/philipesteiff/skill"
  url "https://github.com/philipesteiff/skill/releases/download/v0.0.15/skill-darwin-arm64.tar.gz"
  sha256 "640cba32406e0fa522857ef7a961027ea5c06368dd5d895983b68ab8ae5e8967"
  version "0.0.15"

  def install
    bin.install "skill"
  end
end
