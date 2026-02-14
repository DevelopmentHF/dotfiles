return {
  "lervag/vimtex",
  lazy = false, -- Don't lazy load VimTeX
  config = function()
    vim.g.vimtex_view_method = "zathura" -- Set viewer to Zathura
  end
}

