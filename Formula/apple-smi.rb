class AppleSmi < Formula
  desc "nvidia-smi like GPU inspector for Apple Silicon on macOS"
  homepage "https://github.com/zlicdt/apple-smi"
  license "MIT"

  on_intel do
    odie "apple-smi only supports Apple Silicon Macs"
  end

  version "1.4.3"
  url "https://github.com/zlicdt/apple-smi/releases/download/v#{version}/apple-smi", using: :nounzip
  sha256 "263a035baa3e31a85214e992a811caeefdcadcbcfd837c1f637aa04393eb9587"

  def install
    bin.install "apple-smi"
  end

  test do
    system "#{bin}/apple-smi", "--help"
  end
end
