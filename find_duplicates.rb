def find_duplicates(nums)
  size = nums.size
  ret = []
  (0..size-1).each do |i|
    if nums[nums[i].abs - 1] < 0
      ret.push(nums[i].abs)
    else
      nums[nums[i].abs - 1] *= -1
    end
  end
  ret
end

nums = [4,3,2,7,8,2,3,1]
p find_duplicates(nums)
