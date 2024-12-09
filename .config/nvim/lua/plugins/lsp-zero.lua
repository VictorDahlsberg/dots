return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v3.x",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-cmdline",
		"L3MON4D3/LuaSnip",
		"Hoffs/omnisharp-extended-lsp.nvim",
		"nvim-java/nvim-java",
	},
	init = function()
		local cmp = require("cmp")
		cmp.setup({
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<Left>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<Right>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			}),
		})
		local lsp_zero = require("lsp-zero")
		lsp_zero.on_attach(function(_, bufnr)
			lsp_zero.default_keymaps({ buffer = bufnr })
		end)
        require('java').setup()
		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = {},
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
			},
		})
        require('lspconfig').jdtls.setup({})
		require("lspconfig").omnisharp.setup({
			handlers = {
				["textDocument/definition"] = require("omnisharp_extended").definition_handler,
				["textDocument/typeDefinition"] = require("omnisharp_extended").type_definition_handler,
				["textDocument/references"] = require("omnisharp_extended").references_handler,
				["textDocument/implementation"] = require("omnisharp_extended").implementation_handler,
			},
		})
	end,
}
