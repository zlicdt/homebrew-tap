class AppleSmi < Formula
  desc "nvidia-smi like GPU inspector for Apple Silicon on macOS"
  homepage "https://github.com/zlicdt/apple-smi"
  license "MIT"

  on_intel do
    odie "apple-smi only supports Apple Silicon Macs"
  end

  version "1.4.4"
  url "https://github.com/zlicdt/apple-smi/releases/download/v#{version}/apple-smi", using: :nounzip
  sha256 "e4f0dbbeeaedd8c0a7a1ea87c9f9ec22af79e7849f22cff058bbf7a0a0d7f147"

  def install
    bin.install "apple-smi"
  end

  test do
    system "#{bin}/apple-smi", "--help"
  end
end
