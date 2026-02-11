class Skill < Formula
  desc "CLI for managing skills"
  homepage "https://github.com/philipesteiff/skill"
  url "https://github.com/philipesteiff/skill/releases/download/v0.1.1/skill-darwin-arm64.tar.gz"
  sha256 "3f150f3af57d2e92f3436864b3ea347e45e75842223399dde35294f7ac8990b3"
  version "0.1.1"

  def install
    bin.install "skill"
  end
end
