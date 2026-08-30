local mt = {
    -- __add = function(a, b) ... end,
    -- __tostring = function(v) ... end,
}

local function readvec()
    local line = io.read()
    local x, y = line:match("(-?%d+) (-?%d+)")
    return setmetatable({x = tonumber(x), y = tonumber(y)}, mt)
end

local v1 = readvec()
local v2 = readvec()
-- print(tostring(v1 + v2))
