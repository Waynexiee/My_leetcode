def longest_consecutive(nums)
  return 0 if nums.empty? || nums.nil?
  h = {}
  max = 1
  left = 0
  right = 0
  nums.each do |num|
    if h[num]
      next
    else
      left = h[num - 1] ? h[num - 1] : 0
      right = h[num + 1] ? h[num + 1] : 0
      sum = left + right + 1
      max = [max, sum].max
      h[num] = sum
      h[num - left] = sum
      h[num + right] = sum
    end
  end
  max
end

nums = [100, 4, 200, 1, 3, 2]
p longest_consecutive(nums)
