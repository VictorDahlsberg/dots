return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim" },
	init = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
		vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
		vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>fs", builtin.current_buffer_fuzzy_find, {})
		vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
		vim.keymap.set("n", "<leader>gr", "<cmd>Telescope lsp_references path_display={'tail'}<CR>", {})
		vim.keymap.set("n", "<leader>gd", builtin.lsp_definitions, {})
		vim.keymap.set("n", "<leader>gt", builtin.lsp_type_definitions, {})
		vim.keymap.set("n", "<leader>gD", builtin.diagnostics, {})
	end,
}
