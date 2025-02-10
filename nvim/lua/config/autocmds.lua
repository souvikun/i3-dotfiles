-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Remove background colors for transparency
    vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
    vim.cmd("highlight NormalNC guibg=NONE ctermbg=NONE")
    vim.cmd("highlight SignColumn guibg=NONE ctermbg=NONE")
    vim.cmd("highlight VertSplit guibg=NONE ctermbg=NONE")
    vim.cmd("highlight LineNr guibg=NONE ctermbg=NONE")
    vim.cmd("highlight StatusLine guibg=NONE ctermbg=NONE")
    vim.cmd("highlight StatusLineNC guibg=NONE ctermbg=NONE")
    vim.cmd("highlight EndOfBuffer guibg=NONE ctermbg=NONE")
  end,
})
