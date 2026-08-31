local function validateAge(s)
	local age = tonumber(s)
	if not age then
		error("not a number")
	elseif age < 0 then
		error("negative")
	end

	return age
end

local line = io.read()
local ok, result = pcall(validateAge, line)

if ok then
	print("age: " .. result)
else
	local err_message = string.match(result, ":%d+: (.*)")
	print("error: " .. err_message)
end
