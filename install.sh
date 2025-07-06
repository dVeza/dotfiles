#!/bin/bash

# Install Claude Code globally
npm install -g @anthropic-ai/claude-code

# Copy bash_aliases to home directory
cp ~/.dotfiles/.bash_aliases ~/.bash_aliases

# Source bash_aliases in the current shell profile
echo "source ~/.bash_aliases" >> ~/.bashrc

# Source the aliases for the current session
source ~/.bash_aliases

echo "✅ Claude Code installed and environment variables loaded!"
echo "🔧 Your AWS and Claude settings are now active."