class Thousand < Formula
  desc "Autonomous repository improvement orchestrator"
  homepage "https://github.com/philipesteiff/thousand"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/philipesteiff/thousand/releases/download/v0.0.1/thousand-darwin-arm64.tar.gz"
      sha256 "3c2aa561bf49cc5b25fe2f0fc7629e61427907822eaa9632fa0a63f231b3c858"
    end

    on_intel do
      url "https://github.com/philipesteiff/thousand/releases/download/v0.0.1/thousand-darwin-x86_64.tar.gz"
      sha256 "352d9914eb704bf32b523eb4cd842fd0d16e0858b5b1c27ceb8bd303bacd3d58"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/philipesteiff/thousand/releases/download/v0.0.1/thousand-linux-x86_64.tar.gz"
      sha256 "fab5a6e480ab1b2148bbe8963b1c04be6c7b829aa216bcc98811e2daa6237374"
    end
  end

  def install
    bin.install "thousand"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/thousand version")
  end
end
