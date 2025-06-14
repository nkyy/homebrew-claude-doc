class ClaudeDoc < Formula
  desc "Documentation toolkit optimized for Claude Code AI assistant"
  homepage "https://github.com/nkyy/claude-doc-structure"
  version "0.1.1"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nkyy/claude-doc-structure/releases/download/v0.1.1/claude-docs-darwin-amd64"
    sha256 "fef3b7f35bc63914992192701cf11cbe53b9ca1b94be14896e820f6d32f6101c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nkyy/claude-doc-structure/releases/download/v0.1.1/claude-docs-darwin-arm64"
    sha256 "80053a24ce3370307e68354b08b32d8011653dd5c08288d3ffffdbe532f767a8"
  end
  
  def install
    bin.install Dir["claude-docs-*"].first => "claude-docs"
  end
  
  test do
    system "#{bin}/claude-docs", "--help"
  end
end
