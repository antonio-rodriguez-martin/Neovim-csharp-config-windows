vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.lazy")
vim.lsp.config('lua_ls', {})

local base16_color = require'lualine.themes.base16'
require("lualine").setup{
options = { theme = base16_color }
}
require("nvim-treesitter")

-- Quality of Life
local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.cursorline = true

opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.smartindent = true

opt.hlsearch = true
opt.showmatch = true

opt.foldenable = true
opt.foldlevel = 99

opt.termguicolors = true

-- mapping
local map = vim.keymap.set

map("i", "jk", "<Esc>")

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("n", "<leader>ñ", vim.diagnostic.setloclist, {desc = "Open diagnostics list"})

map("n", "<leader>l", vim.lsp.buf.hover)
map("n", "gr", vim.lsp.buf.references)
map("n", "<leader>rn", vim.lsp.buf.rename)

map("n", "<F12>", vim.lsp.buf.definition, {
    desc = "Go to definition",
})

-- Git quality of life
local neogit = require('neogit')
map("n", "<leader>gs", neogit.open, {silent=true, noremap=true})

require("neogit").setup({
  -- Customizes the visual symbols in the Neogit status buffer
  signs = {
    -- Hunk and file sections (open/closed folding indicators)
    hunk = { "➔", "▼" },   -- { closed, open }
    item = { "➔", "▼" },   -- { closed, open }
  },
})

