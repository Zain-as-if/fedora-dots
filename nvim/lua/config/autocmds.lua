local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true})
end

--Removes the barbecue winbar from the :Ex menu
local netrw_group = augroup("netrw")

vim.api.nvim_create_autocmd("FileType", {
  group = netrw_augroup,
  pattern = "netrw",
  callback = function()
    vim.opt_local.winbar = nil
  end,
})

--Highlight on yank
local yank_group = augroup("highlight_yank")

vim.api.nvim_create_autocmd("TextYankPost", {
  group = yank_group,
  callback = function()
    (vim.hl or vim.Highlight).on_yank()
  end,
})

--Make it easier to close tabs when inline
local man_unlisted = augroup("man_unlisted")

vim.api.nvim_create_autocmd("FileType", {
  group = man_unlisted,
  pattern = { "man" },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
  end,
})
