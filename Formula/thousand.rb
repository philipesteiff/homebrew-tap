class Thousand < Formula
  desc "Autonomous repository improvement orchestrator"
  homepage "https://github.com/philipesteiff/thousand"
  version "0.0.0"

  on_macos do
    on_arm do
      url "https://github.com/philipesteiff/thousand/releases/download/v0.0.0/thousand-darwin-arm64.tar.gz"
      sha256 "0c07cbd10475723837785eb6c2ec64bf509d26952b28e33164dbaef2183c7b66"
    end

    on_intel do
      url "https://github.com/philipesteiff/thousand/releases/download/v0.0.0/thousand-darwin-x86_64.tar.gz"
      sha256 "5b9a7dfa270946f3741aac369ce1a3b6151d1d3f67ba53e821a19e925e0e06d5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/philipesteiff/thousand/releases/download/v0.0.0/thousand-linux-x86_64.tar.gz"
      sha256 "1055fcd9f01cdece26edffa06be53595a1e9bef38a4661aeaaf9db96c0e36c48"
    end
  end

  def install
    bin.install "thousand"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/thousand version")
  end
end
