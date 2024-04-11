-- Bootstrap lazy.nvim package manager
-- Code obtained from their github
-- Checks if we have lazy, if not, install stuff
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Obtain our plugins and options for lazy
require("lazy").setup({
	{
		"ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...
	},
	{
		'nvim-lualine/lualine.nvim',
    	dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{
    	'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
    },
	{
		"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"
	},
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
    	"neovim/nvim-lspconfig",
	},
	{
		"hrsh7th/nvim-cmp"
	},
	{
		"hrsh7th/cmp-nvim-lsp"
	},
	{
		"dcampos/nvim-snippy"
	},
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
		-- use opts = {} for passing setup options
		-- this is equalent to setup({}) function
	},

}, opts)
