return {
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  opts = {
    disable_filetype = { "TelescopePrompt" },
    disable_in_macro = true,
    disable_in_visualblock = false,
    disable_in_replace_mode = true,
    ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=],
    enable_moveright = true,
    enable_afterquote = true, -- add bracket pairs after quote 
    enable_check_bracket_line = true, -- check bracket in same line
    enable_bracket_in_quote = true,
    enable_abbr = false, -- triggers abbreviations 
    break_undo = true, -- switch for basic rule break undo sequence
    check_ts = false,
    map_cr = true,
    map_bs = true, -- maps <BS> backspace key
    map_c_h = false, -- maps the <C-h> key to delete pair 
    map_c_w = false, -- maps the <C-w> key to delete pair if possible 
  }
}
