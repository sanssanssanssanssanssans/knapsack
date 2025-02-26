local knapsack = {} :: impl

export type impl = {
	solve : (a : number, b : number, items : table) -> number
}

function knapsack.solve(a : number,b : number,items : table) : number
	local dp : table = {}
	for i : number = 0, b do 
		dp[i] = 0
	end
	for _, item : number in ipairs(items) do
		local w : number = item[1]
		local v : number = item[2]
		for i : number = b, w, -1 do
			dp[i] = math.max(dp[i],dp[i-w]+v)
		end
	end
	
	return dp[b]
end

return knapsack
