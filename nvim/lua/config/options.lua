-- https://neovim.io/doc/user/options.html --

-- leader already mapped in lazy.lua -- 
-- vim.g.mapleader = " " -- 

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

-- enables 24 bit colour
vim.opt.termguicolors = true
-- won't wrap text to next line if too long, will just continue on same long line
vim.opt.wrap = false
-- prevents text shifting when diagnostics appear
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
-- keeps content above/below cursor
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
-- while typing search command show where pattern as it was typed so far matches
vim.opt.incsearch = true
-- uses system clipboard
-- vim.opt.clipboard = "unnamedplus"
-- persistent undos
vim.opt.undofile = true

-- if this many milliseconds nothing typed, swap file will be written to disk
vim.opt.updatetime = 250
-- time in milliseconds to wait for mapped sequence to complete
vim.opt.timeoutlen = 300

-- overwrites colors set by colourscheme
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#757b9e' })
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = "#91d663" })
vim.api.nvim_set_hl(0, 'CursorLine', { bg = "none" })
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#fa98a8' })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#879bff' })

-- set line number color to be a bit darker
vim.api.nvim_set_hl(0, 'Status_LineNr', { fg = '#6b729c' })

-- set background color to the same as normal, but text color to light grey; use vertical line extension (U+23D0)
vim.api.nvim_set_hl(0, 'Status_DivLine', { bg = '#1e1e2e', fg = '#313244' })


-- highlight the current line
-- vim.wo.cursorline = true

-- set sign column to always show, limiting width to 1 character
-- vim.wo.signcolumn = 'yes:1'

-- set up the status column format
vim.o.statuscolumn = "%#Status_LineNr#%3.3l%* %-2.2r%#Status_DivLine#⏐%*"

-- when splitting window will put to the right/below
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.backup = false

vim.g.lazyvim_picker = "telescope"

if vim.env.SSH_CONNECTION then
  vim.g.clipboard = {
    name = "osc52",
    copy = {
      ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
      ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
      ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
      ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
    },
  }
else
  vim.opt.clipboard = "unnamedplus"
end
