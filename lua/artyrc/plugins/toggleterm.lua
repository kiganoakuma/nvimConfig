return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		size = 20,
		open_mapping = [[<C-/>]], -- default key mapping to toggle terminal
		shade_filetypes = {},
		shade_terminals = true,
		shading_factor = 2,
		start_in_insert = true,
		insert_mappings = true,
		persist_size = true,
		direction = "horizontal", -- 'vertical' | 'horizontal' | 'tab' | 'float'
		close_on_exit = true,
		shell = vim.o.shell,
		float_opts = {
			border = "curved",
			winblend = 3,
		},
	},
}
