return {
	"kylechui/nvim-surround",
	event = { "BufReadPre", "BufNewFile" },
	version = "*", -- Use for stability; omit to use `main` branch for the latest features
	config = function()
		require("nvim-surround").setup({
			surrounds = {
				["t"] = { -- Use 't' for tags
					add = function()
						local tag = vim.fn.input("Enter the HTML tag: ")
						return { { "<" .. tag .. ">" }, { "</" .. tag .. ">" } }
					end,
					find = function()
						return require("nvim-surround").find_selection_between("<", ">")
					end,
					delete = function()
						return require("nvim-surround").delete_selection_between("<", ">")
					end,
					change = {
						target = function()
							return require("nvim-surround").get_selection_between("<", ">")
						end,
						replacement = function()
							local tag = vim.fn.input("Enter the new HTML tag: ")
							return { { "<" .. tag .. ">" }, { "</" .. tag .. ">" } }
						end,
					},
				},
			},
		})
	end,
}
