-- import comment plugin safely
local setup, colorizer = pcall(require, "colorizer")
if not setup then
	return
end

-- enable comment
colorizer.setup()
