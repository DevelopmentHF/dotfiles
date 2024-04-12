# dotfiles

Contains my custom dotfiles.
Primarily nvim.

## Project Layout
.
├── .bashrc
├── .zshrc // config of terminal
├── copy.sh // copy contents of desired dotfiles to this repo
├── .config
│   └── nvim
│       ├── init.lua // require all modules
│       ├── lazy-lock.json
│       └── lua
│           └── core
│               ├── keybindings.lua // basic vim config
│               ├── plugin_config // package configs
│               │   ├── completions.lua
│               │   ├── gruvbox.lua
│               │   ├── init.lua
│               │   ├── lsp.lua
│               │   ├── lualine.lua
│               │   ├── snippy.lua
│               │   ├── telescope.lua
│               │   └── treesitter.lua
│               └── plugins.lua // require and install packages

## Neovim Dependencies

- Ripgrep is required for telescope
- Unzip is required for mason
