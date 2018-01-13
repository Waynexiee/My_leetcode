def subsets_with_dup(nums)
  ret = []
  temp = []

  nums.sort!
  helper(nums, nums.size, temp, ret)
  ret
end

def helper(nums, size, temp, ret)
  return if size < 0
  ret.push(temp)
  nums.each_with_index do |e, i|
    next if i > 0 && e == nums[i-1]
    next if !temp.empty? && temp[-1] > e
    temp.push(e)
    nums_copy = nums.dup
    nums_copy.delete_at(i)
    helper(nums_copy, size-1, temp.clone, ret)
    temp.pop
  end
end

nums = [4,4,4,1,4]
p subsets_with_dup(nums)
