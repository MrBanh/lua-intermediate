---@class (exact) Point
---@field x number
---@field y number

local mt = {
	---@param a Point
	---@param b Point
	---@return Point
	__add = function(a, b)
		return setmetatable({
			x = a.x + b.x,
			y = a.y + b.y,
		}, getmetatable(a))
	end,

	---@param v Point
	__tostring = function(v)
		return string.format("(%d,%d)", v.x, v.y)
	end,
}

local function readvec()
	local line = io.read()
	local x, y = line:match("(-?%d+) (-?%d+)")
	return setmetatable({ x = tonumber(x), y = tonumber(y) }, mt)
end

local v1 = readvec()
local v2 = readvec()
print(v1 + v2)
