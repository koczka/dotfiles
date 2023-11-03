-- import comment plugin safely
local setup, tint = pcall(require, "tint")
if not setup then
	return
end

-- enable comment
tint.setup()
