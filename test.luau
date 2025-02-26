local module = require("./main")
local items = {
	{2,3},
	{3,4},
	{4,5}
}

local b = 5
local a = #items

print("max price: ".. module.solve(a,b,items))

-- print : max price : 7
