return {
	"linux-cultist/venv-selector.nvim",
	branch = "regexp",
	dependencies = {
		"neovim/nvim-lspconfig",
		"nvim-telescope/telescope.nvim",
	},
	ft = "python",
	opts = {},
	keys = {
		{ "<leader>vs", "<cmd>VenvSelect<cr>", desc = "[V]env [S]elect" },
		{ "<leader>vc", "<cmd>VenvSelectCached<cr>", desc = "[V]env [C]ached" },
	},
}
