def first_missing_positive(nums)
  for i in (0..nums.size - 1)
    while nums[i] > 0 && nums[i] <= nums.size && nums[i] != nums[nums[i] - 1]
       nums[nums[i] - 1], nums[i] = nums[i], nums[nums[i] - 1]
    end
  end

  0.upto(nums.size - 1) do |i|
    return i + 1 if nums[i] != i + 1
  end

  nums.size + 1
end
nums = [3,4,-1,1]
puts first_missing_positive(nums)
