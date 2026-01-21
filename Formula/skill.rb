class Skill < Formula
  desc "CLI for managing skills"
  homepage "https://github.com/philipesteiff/skill"
  url "https://github.com/philipesteiff/skill/releases/download/v0.0.14/skill-darwin-arm64.tar.gz"
  sha256 "b75e1d88cf654fc0783cab55f7ef083b022b2d8d1e8544e0b17252359af6e20d"
  version "0.0.14"

  def install
    bin.install "skill"
  end
end
