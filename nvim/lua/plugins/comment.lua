return {
  'numToStr/Comment.nvim',
  opts = {
    -- add space between comment and the line
    padding = true,
    -- whether cursor should stay at position
    sticky = true,
    -- LHS of toggle mappings in NORMAL mode
    toggler = {
      -- remap to ctrl + #
      line = '<C-\\>',
      block = 'gcb',
    },
    -- LHS of operator-pending mappings in NORMAL & VISUAL mode
    opleader = {
      -- remap to ctrl + #
      line = '<C-\\>',
      block = 'gb',
    },
    extra = {
      -- add comment line above
      above = 'gcO',
      -- add comment line below
      below = 'gco',
      -- add comment at end of line
      eol = 'gcA',
    },
    mappings = {
      basic = true,
      extra = true,
    },
    pre_hook = nil,
    post_hook = nil,
  }
}
