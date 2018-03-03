def largest_divisible_subset(nums)
  nums.sort!
  pre = [-1]
  count = [1]
  ret = []
  size = nums.size
  max = 0
  index = -1
  (1.. size - 1).each do |i|
    pre[i] = -1
    count[i] = 1
    (i-1).downto(0) do |j|
      if nums[i] % nums[j] == 0
        if count[i] < count[j] + 1
          count[i] = count[j] + 1
          pre[i] = j
        end
      end
      if count[i] > max
        max = count[i]
        index = i
      end
    end
  end

  while index >= 0
    ret.unshift(nums[index])
    index = pre[index]
  end

  ret
end

nums = [1,2,4,8]
p largest_divisible_subset(nums)
