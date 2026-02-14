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
		dependencies = { 'nvim-lua/plenary.nvim' }
    },
	{
		"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"
	},
	{
		"mason-org/mason.nvim",
		opts = {
		ui = {
			icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
			},
		},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "mason-org/mason.nvim" },
		opts = {
		ensure_installed = { "lua_ls", "rust_analyzer", "clangd", "pylsp" },
		},
	},
  	{ "neovim/nvim-lspconfig" },
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
	},

	require("core.plugin_config.vimtex"),

}, opts)

