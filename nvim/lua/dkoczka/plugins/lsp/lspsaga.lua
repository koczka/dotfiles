-- import lspsaga safely
local saga_status, lspsaga = pcall(require, "lspsaga")
if not saga_status then
	return
end

lspsaga.setup({
	-- keybinds for navigation in lspsaga window
	move_in_saga = { prev = "<Up>", next = "<Down>" },
	-- use enter to open file with finder
	finder_action_keys = {
		open = "<CR>",
	},
	-- use enter to open file with definition preview
	definition_action_keys = {
		edit = "<CR>",
	},
	server_filetype_map = {
		typescript = "typescript",
	},
})
