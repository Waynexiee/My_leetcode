def search(nums, target)
  return false if nums.nil? || nums.empty?
  nums = nums.uniq
  l = 0
  r = nums.size - 1
  if nums[0] > nums[-1]
    while l <= r
      middle = (l + r) / 2
      if nums[middle] < nums[middle - 1]
        break
      elsif nums[0] <= nums[middle]
        l = middle + 1
      elsif nums[0] > nums[middle]
        r = middle
      end
    end

    if target < nums[0]
      l = middle
      r = nums.size - 1
    elsif target > nums[0]
      l = 0
      r = middle
    else
      return true
    end
  end
  while l <= r
    middle = (l + r) / 2
    l_rem, r_rem = l, r
    if nums[middle] == target
      return true
    elsif nums[middle] > target
      r = middle
    else
      l = middle + 1
    end
    return false if [l_rem, r_rem] == [l, r]
  end
  false
end

nums = [ 3,1]
target =2
puts search(nums, target)
