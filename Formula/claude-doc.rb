class ClaudeDoc < Formula
  desc "Documentation toolkit optimized for Claude Code AI assistant"
  homepage "https://github.com/nkyy/claude-doc-structure"
  version "0.1.2"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nkyy/claude-doc-structure/releases/download/v0.1.2/claude-docs-darwin-amd64"
    sha256 "53ed95b3e322b46f5b8bc0a1175d9ee4d8f444dbf69df351f69a2095d68572e4"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nkyy/claude-doc-structure/releases/download/v0.1.2/claude-docs-darwin-arm64"
    sha256 "a7b2e0a6669bb1dcf33b5f1d0a93db613037ba731e5cdbe2d761639ef47c4241"
  end
  
  def install
    bin.install Dir["claude-docs-*"].first => "claude-docs"
  end
  
  test do
    system "#{bin}/claude-docs", "--help"
  end
end
