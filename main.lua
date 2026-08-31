local function evens(maxN)
	local n = 0
	return function()
		n = n + 2
		if n <= maxN then
			return n
		end
	end
end

local n = tonumber(io.read())
for v in evens(n) do
	print(v)
end
