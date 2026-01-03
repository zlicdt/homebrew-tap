class AppleSmi < Formula
  desc "nvidia-smi like GPU inspector for Apple Silicon on macOS"
  homepage "https://github.com/zlicdt/apple-smi"
  license "MIT"

  on_intel do
    odie "apple-smi only supports Apple Silicon Macs"
  end

  version "1.4.1"
  url "https://github.com/zlicdt/apple-smi/releases/download/v#{version}/apple-smi", using: :nounzip
  sha256 "2e2a0c8275fd42b109d3464ce310ea5c1761643bbb655b94f52ff79b448d15c3"

  def install
    bin.install "apple-smi"
  end

  test do
    system "#{bin}/apple-smi", "--help"
  end
end
