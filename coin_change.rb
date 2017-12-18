def coin_change(coins, amount)
  return 0 if amount == 0
  dp = [0] * (amount + 1)
  sum = 1
  while sum <= amount
    min = 100000
    coins.each do |coin|
      if dp[sum - coin] == -1
        next
      end

      if sum >= coin && min > dp[sum - coin] + 1 
        min = dp[sum - coin] + 1
      end
    end
    dp[sum] = (min == 100000 ? -1 : min)
    sum += 1
  end
  dp[-1]
end

coins = [3,7,405,436]


amount = 8839


puts coin_change(coins, amount)
