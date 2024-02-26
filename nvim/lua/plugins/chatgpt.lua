return {
	"jackMort/ChatGPT.nvim",
	event = "VeryLazy",
	config = function()
		require("chatgpt").setup({
			-- api_key_cmd = :lua print(os.getenv("OPENAI_API_KEY"))
		})
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"folke/trouble.nvim",
		"nvim-telescope/telescope.nvim",
	},
}
