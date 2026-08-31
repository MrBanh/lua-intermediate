local Account = {}
Account.__index = Account

function Account.new(initial)
	return setmetatable({ bal = initial }, Account)
end

function Account:deposit(amount)
	self.bal = self.bal + amount
end

function Account:withdraw(amount)
	self.bal = self.bal + amount
end

function Account:balance()
	return self.bal
end

local initial = tonumber(io.read())
local acc = Account.new(initial)

for _ = 1, 3 do
	local amount = tonumber(io.read())
	if amount >= 0 then
		acc:deposit(amount)
	else
		acc:withdraw(amount)
	end
end

print(acc:balance())
