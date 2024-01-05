lua T = true
lua F = false
lua set = vim.opt
lua require('basic')
lua require('keybinds')
lua require('plugins')
lua require('lsp/setup')
lua require('gruvbox')

lua << EOF
--[[
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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
]]
EOF

set background=dark
colorscheme gruvbox
