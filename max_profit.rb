def max_profit(prices)
    left = 0
    size = prices.size
    left_min = left

    max = 0
    loop do
      left += 1
      break if left == size
      max = prices[left] - prices[left_min] if max < prices[left] - prices[left_min]
      left_min = left if prices[left_min] > prices[left]
      puts max
    end
    max
end
prices = [1,4,2]
puts max_profit(prices)
