local lp_status, ibl = pcall(require, "ibl")
if not lp_status then
	return
end

ibl.setup({
	whitespace = {
		remove_blankline_trail = false,
	},
	scope = {
		enabled = true,
	},
})
