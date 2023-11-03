-- import gitsigns plugin safely
local status, matchup = pcall(require, "vim-matchup")
if not status then
	return
end

-- configure/enable gitsigns
matchup.setup({
	matchup_matchparen_offscreen = { method = "popup" },
})
