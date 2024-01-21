return {
	"szw/vim-maximizer", -- maximizes and restores current window
	config = function()
		vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization
	end,
}
