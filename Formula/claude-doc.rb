class ClaudeDoc < Formula
  desc "Documentation toolkit optimized for Claude Code AI assistant"
  homepage "https://github.com/nkyy/claude-doc-structure"
  version "0.1.3"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nkyy/claude-doc-structure/releases/download/v0.1.3/claude-docs-darwin-amd64"
    sha256 "66dab9b71e9830d3022610b98d02907dfdb566a89b5382588e6dc7d383787725"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nkyy/claude-doc-structure/releases/download/v0.1.3/claude-docs-darwin-arm64"
    sha256 "ccef5bc95a0f91ed0e5d9f5d73c8d771f2b4448fb305ce8e535d4794d28e8b12"
  end
  
  def install
    bin.install Dir["claude-docs-*"].first => "claude-docs"
  end
  
  test do
    system "#{bin}/claude-docs", "--help"
  end
end
