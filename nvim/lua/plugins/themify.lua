return {
  'lmantw/themify.nvim',
  lazy = false,
  priority = 999,

  config = {
    async = false;
    activity = true;

    {
      'folke/tokyonight.nvim',
      branch = 'main',
      -- before = function(theme)
      -- end,
      -- after = function(theme)
      -- end, 
      whitelist = {'tokyonight-night', 'tokyonight-storm', 'tokyonight-moon'},
      blacklist = {},
    },
    {
      'catppuccin/nvim',
      branch = 'main',
      whitelist = {'catppuccin-mocha', 'catppuccin-macchiato'},
    },
    {
      'Mofiqul/dracula.nvim',
      branch = 'main',
      whitle = {'dracula', 'dracula-soft'},
    },

    -- loader = function()
    -- end
  },
  keys = {
    {'<leader>c', '<cmd>Themify<cr>', desc = "Theme Switcher With Preview"}, 
  },
}
