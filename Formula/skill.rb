class Skill < Formula
  desc "CLI for managing skills"
  homepage "https://github.com/philipesteiff/skill"
  url "https://github.com/philipesteiff/skill/releases/download/v0.0.16/skill-darwin-arm64.tar.gz"
  sha256 "dd25df79aae1b24adc4d6478bf144223633df08b9690474d8895847e4ac43b03"
  version "0.0.16"

  def install
    bin.install "skill"
  end
end
