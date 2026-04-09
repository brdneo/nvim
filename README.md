# nvim

Personal Neovim configuration for data engineering and Python development.

## Stack

- **Plugin manager:** Lazy.nvim
- **LSP:** Mason + nvim-lspconfig
- **Completion:** nvim-cmp
- **Fuzzy finder:** Telescope
- **File tree:** Neo-tree
- **Syntax:** nvim-treesitter
- **AI:** Agentic.nvim (Gemini)
- **Git:** Gitsigns + Fugitive
- **Statusline:** Lualine

## Requirements

- Neovim >= 0.11
- Node.js
- ripgrep
- fd
- gcc
- Python + pynvim
- `@google/gemini-cli` (for AI features)

## Install

```bash
git clone git@github.com:brdneo/nvim.git ~/.config/nvim
nvim
```

Lazy.nvim will bootstrap and install all plugins on first launch.

## AI Setup

```bash
npm install -g @google/gemini-cli
gemini auth login
```

## Credits

Based on [zvim.nvim](https://github.com/muhammadzkralla/zvim.nvim) by [@muhammadzkralla](https://github.com/muhammadzkralla).
