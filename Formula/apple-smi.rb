class AppleSmi < Formula
  desc "nvidia-smi like GPU inspector for Apple Silicon on macOS"
  homepage "https://github.com/zlicdt/apple-smi"
  license "MIT"

  on_intel do
    odie "apple-smi only supports Apple Silicon Macs"
  end

  version "1.4.2"
  url "https://github.com/zlicdt/apple-smi/releases/download/v#{version}/apple-smi", using: :nounzip
  sha256 "df78b1b5ba3e6c51fdf85e71fc7e124a114aa7f88e78999850654934572d6c28"

  def install
    bin.install "apple-smi"
  end

  test do
    system "#{bin}/apple-smi", "--help"
  end
end
