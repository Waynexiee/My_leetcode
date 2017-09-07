def search(nums, target)
  return -1 if nums.empty? || nums.nil?
  size = nums.size
  left = 0
  right = size - 1
  middle = -1
  if nums[0] > nums[-1] && size > 1
    while left <= right
      i = (left + right) / 2
      if nums[i] < nums[i - 1] && i > 0
        middle = i
        break
      elsif nums[0] <= nums[i]
        left = i + 1
      else
        right = i - 1
      end
    end
  end

  if middle == -1
    left = 0
    right = size - 1
  elsif nums[0] <= target
    left = 0
    right = middle - 1
  else
    left = middle
    right = size - 1
  end
  while left <= right
    i = (left + right) / 2
    if nums[i] < target
      left = i + 1
    elsif nums[i] > target
      right = i - 1
    else
      return i
    end
  end
  -1
end
nums = [5, 1]
p search(nums, 1)
