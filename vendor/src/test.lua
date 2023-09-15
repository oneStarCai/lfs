print("test begin")


local function MyPrint(data)
	if type(data) == 'table' then
		for k, v in pairs(data) do
			print("data:", k, v)
		end
	else
		print("data:", data)
	end
end

local lfs = require "lfs"
assert(lfs)

local cur = lfs.currentdir()
MyPrint(cur)

print("test end")
