def min_sub_array_len(s, nums)
  size = nums.size
  sum = 0
  l, r = 0, 0
  min = size
  ret = []
  while r < size
    sum += nums[r]
    while sum - nums[l] >= s
      sum -= nums[l]
      l += 1
    end
    if sum >= s && min > r - l + 1
      min = r - l + 1
    end
    r += 1
  end
  return 0 if sum < s
  min
end

nums = [2,3,1,2,4,3]
s = 7
p min_sub_array_len(s, nums)
