return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = function(term)
				if term.direction == "horizontal" then
					return 15
				elseif term.direction == "vertical" then
					return vim.o.columns * 0.4
				end
			end,
			open_mapping = [[<C-\>]],
			hide_numbers = true,
			shade_terminals = true,
			shading_factor = 2,
			start_in_insert = true,
			insert_mappings = true,
			persist_size = true,
			direction = "float",
			close_on_exit = true,
			shell = vim.o.shell,
			float_opts = {
				border = "curved",
				winblend = 0,
			},
		})

		local opts = { noremap = true, silent = true }

		-- Toggle terminals by direction
		vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", vim.tbl_extend("force", opts, { desc = "Toggle float terminal" }))
		vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", vim.tbl_extend("force", opts, { desc = "Toggle horizontal terminal" }))
		vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", vim.tbl_extend("force", opts, { desc = "Toggle vertical terminal" }))

		-- Exit terminal insert mode with Escape
		vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], opts)

		-- Navigate out of terminal splits without closing them
		vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], opts)
		vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], opts)
		vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], opts)
		vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], opts)
	end,
}
