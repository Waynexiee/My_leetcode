def remove_element(nums, val)
  size = nums.size
  l = 0
  r = size - 1
  while l < r
    while nums[l] != val && l <= r
      l += 1
    end
    while nums[r] == val && l <= r
      r -= 1
    end
    if l < r
      nums[l], nums[r] = nums[r], nums[l]
      l += 1
      r -= 1
    end
  end
  nums[l] == val ? l : [l + 1, size].min
end

nums = [3,3]

val = 2
puts remove_element(nums, val)
