local M = {}

function M.square(n)
	return n * n
end

function M.cube(n)
	return n * n * n
end

function M.sumTo(n)
	local sum = 0
	for i = 1, n do
		sum = sum + i
	end
	return sum
end

local n = tonumber(io.read())
print(M.square(n))
print(M.cube(n))
print(M.sumTo(n))
