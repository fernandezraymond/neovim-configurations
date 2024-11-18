return {
	'nvim-telescope/telescope.nvim',
	ranch = '0.1.x',
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "truncate " },
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Lists files in your current working directory, respects .gitignore" })
		keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>", { desc = "Fuzzy search through the output of git ls-files command, respects .gitignore" })
		keymap.set("n", "<leader>fgs", "<cmd>Telescope git_status<cr>", { desc = "Lists current changes per file with diff preview and add action. (Multi-selection still WIP)" })
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Search for a string in your current working directory and get results live as you type, respects .gitignore. (Requires ripgrep)" })
	end,
}
