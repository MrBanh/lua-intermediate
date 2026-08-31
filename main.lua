local function evens(maxN)
	local n = 2
	return coroutine.wrap(function()
		while n <= maxN do
			coroutine.yield(n)
			n = n + 2
		end
	end)
end

local n = tonumber(io.read())
for v in evens(n) do
	print(v)
end
