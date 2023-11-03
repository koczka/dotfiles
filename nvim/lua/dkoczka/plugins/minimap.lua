local status, minimap = pcall(require, "mini.map")
if not status then
	return
end

minimap.setup()
