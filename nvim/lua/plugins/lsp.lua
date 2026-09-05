return {
	{
		"mason-org/mason.nvim",
		event = { "BufReadPre", "BufNewFile", "BufEnter" },
		opts = {
			ui = {
				border = "rounded",
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile", "BufEnter" },
		config = function()
			-- diagnostic config
			vim.diagnostic.config {
				virtual_text = true,
				update_in_insert = true,
				underline = true,
			}

      vim.lsp.enable( 'lua_ls' )
      vim.lsp.enable( 'clangd' )
      vim.lsp.enable( 'nil_ls' )
      vim.lsp.enable( 'matlab_ls' )
		end,
	},
}
