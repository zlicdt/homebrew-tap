class AppleSmi < Formula
  desc "nvidia-smi like GPU inspector for Apple Silicon on macOS"
  homepage "https://github.com/zlicdt/apple-smi"
  license "MIT"

  on_intel do
    odie "apple-smi only supports Apple Silicon Macs"
  end

.4.0"
  url "https://github.com/zlicdt/apple-smi/releases/download/v#{version}/apple-smi", using: :nounzip
c1e0154db47ebd222c95f620f3cdd5df717ff9baef74255fba0d40aacf6c"

  def install
    bin.install "apple-smi"
  end

  test do
    system "#{bin}/apple-smi", "--help"
  end
end
