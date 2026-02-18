class Skill < Formula
  desc "CLI for managing skills"
  homepage "https://github.com/philipesteiff/skill"
  url "https://github.com/philipesteiff/skill/releases/download/v0.1.2/skill-darwin-arm64.tar.gz"
  sha256 "a6c235b047083f6fc96b13193df93f7597c4f534e2ce9726fa0bae5018092293"
  version "0.1.2"

  def install
    bin.install "skill"
  end
end
