def permute_unique(nums)
  ret = []
  temp = []
  nums.sort!
  helper(nums, nums.size, temp, ret)
  ret
end

def helper(nums, size, temp, ret)
  if size == 0
    ret.push(temp)
    return
  end
  p nums

  nums.each_with_index do |e, i|
    next if i > 0 && e == nums[i-1]
    temp.push(e)
    nums_copy = nums.dup
    nums_copy.delete_at(i)
    helper(nums_copy, size-1, temp.clone, ret)
    temp.pop
  end
end

nums = [1,1,2]
p permute_unique(nums)
