def search_range(nums, target)
  size = nums.size
  left = 0
  right = size - 1
  while left <= right
    i = (left + right) / 2
    if nums[i] < target
      left = i + 1
    elsif nums[i] > target
      right = i - 1
    else
      left_e = i
      left_e -= 1 while left_e - 1 >= 0 && nums[left_e] == nums[left_e - 1]
      right_e = i
      right_e += 1 while right_e + 1 < size && nums[right_e] == nums[right_e + 1]
      return [left_e,right_e]
    end
  end
  return [-1,-1]
end

nums = [10]
target = 10
p search_range(nums, target)
