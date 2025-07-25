return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Telescope buffers" })
			vim.keymap.set("n", "<leader>h", builtin.help_tags, { desc = "Telescope help tags" })
			vim.keymap.set("n", "<leader>m", builtin.keymaps, { desc = "Available Keymaps" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		config = function()
			local actions = require("telescope.actions")

			require("telescope").setup({
				defaults = {
					layout_strategy = "flex",
					layout_config = { prompt_position = "top" },
					sorting_strategy = "ascending",
					mappings = {
						i = {
							["<ESC>"] = actions.close,
							["<M-p>"] = require("telescope.actions.layout").toggle_preview,
						},
					},
				},
				pickers = {
					buffers = {
						mappings = {
							i = {
								["<M-d>"] = actions.delete_buffer + actions.move_to_top,
							},
							n = {
								["<M-d>"] = actions.delete_buffer + actions.move_to_top,
							},
						},
						sort_mru = true,
					},
					preview = {
						hide_on_startup = true, -- hide previewer when picker starts
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
