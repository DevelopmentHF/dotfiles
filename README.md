# dotfiles

Contains my custom dotfiles.
Primarily nvim.

## Project Layout
.
├── .bashrc<br>
├── .zshrc // config of terminal<br>
├── copy.sh // copy contents of desired dotfiles to this repo<br>
├── .config<br>
│   └── nvim<br>
│       ├── init.lua // require all modules<br>
│       ├── lazy-lock.json<br>
│       └── lua<br>
│           └── core<br>
│               ├── keybindings.lua // basic vim config<br>
│               ├── plugin_config // package configs<br>
│               │   ├── completions.lua<br>
│               │   ├── gruvbox.lua<br>
│               │   ├── init.lua<br>
│               │   ├── lsp.lua<br>
│               │   ├── lualine.lua<br>
│               │   ├── snippy.lua<br>
│               │   ├── telescope.lua<br>
│               │   └── treesitter.lua<br>
│               └── plugins.lua // require and install packages<br>

## Neovim Dependencies

- Ripgrep is required for telescope
- Unzip is required for mason
