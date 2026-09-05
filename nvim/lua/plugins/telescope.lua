return {
  'nvim-telescope/telescope.nvim', version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  keys = {
    {'<leader>ef', '<cmd>Telescope find_files<cr>', desc = "Finds Files, FZF"},
    {'<leader>eg', '<cmd>Telescope git_files<cr>', desc = "Find Git Files"},
    -- {'<leader>c', '<cmd>Telescope colorscheme<cr>', desc = "Colour Scheme Picker"},
    {'<leader>:', '<cmd>Telescope command_history<cr>', desc = "Command History"},
    {'<leader>gr', '<cmd>Telescope live_grep<cr>', desc = "Live Grep Search"},
  },
}
