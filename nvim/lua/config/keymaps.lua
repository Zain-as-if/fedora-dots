-- in normal mode, open file viewer
vim.keymap.set("n", "<leader>e",  vim.cmd.Ex)

-- in visual mode, highlighted text will move up or down keeping indentation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- DOWN
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv") -- UP
vim.keymap.set("n", "<M-j", ":m .+1<CR>==")
vim.keymap.set("n", "<M-k", ":m .-2<CR>==")

-- centers screen when searching
vim.keymap.set("n", "n", "nzzzv") -- centers when searching forward
vim.keymap.set("n", "N", "Nzzzv") -- centers when searching backwards

-- after pasting over text and replacing (deleting) sends deleted text to
-- void register so doesn't get copied, can still use previously copied text
vim.keymap.set("x", "<leader>p", "\"_dP")

-- enables ctrl + shift + arrow for selection in insert mode
vim.keymap.set('i', '<C-S-Right>', '<C-o>v e', { noremap = true })
vim.keymap.set('i', '<C-S-Left>', '<C-o>v b', { noremap = true })

-- opens lazy (test to see if keybinds can run with plugin)
vim.keymap.set('n', '<C-l>', ':Lazy<CR>', { noremap = true})

-- indent 
vim.keymap.set("n", "<leader><Tab>", ">>", { desc = "Indent Line" })
vim.keymap.set("x", "<leader><Tab>", ">", { desc = "Indent Selection" })

-- unindent
vim.keymap.set("n", "<leader><S-Tab>", "<<", { desc = "Unindent Line" })
vim.keymap.set("x", "<leader><S-Tab>", "<", { desc = "Unindent Selection" })
