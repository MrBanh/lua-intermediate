local function squares()
	return coroutine.wrap(function()
		local i = 1
		while true do
			coroutine.yield(i * i)
			i = i + 1
		end
	end)
end

local n = tonumber(io.read())
local co = squares()
for _ = 1, n do
	print(co())
end
