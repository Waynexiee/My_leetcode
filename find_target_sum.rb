def find_target_sum_ways(nums, s)
  sum = nums.sum + s
  sum.odd? ? 0 : subsum(nums, sum/2)
end

def subsum(nums, s)
  dp = [0] * (s + 1)
  dp[0] = 1
  nums.each do |e|
    s.downto(e) do |i|
      dp[i] += dp[i-e]
    end
  end
  dp[s]
end

nums = [1, 1, 1, 1, 1]
s = 3
puts find_target_sum_ways(nums, s)
