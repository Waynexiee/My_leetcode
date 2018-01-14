def search_insert(nums, target)
  return 0 if nums.nil? || nums.empty?
  l = 0
  r = nums.size - 1
  middle = 0
  while l < r
    l_rem, r_rem = l, r
    middle = (l + r) / 2
    if nums[middle] == target
      return middle
    elsif nums[middle] < target
      l = middle + 1
    elsif nums[middle] > target
      r = middle
    end
    break if [l_rem, r_rem] == [l, r]
  end
  return r + 1 if nums[r] < target
  r
end


nums, target = [1,3,5,6], 5
nums, target = [1,3,5,6], 2
nums, target = [1,3,5,6], 7
nums, target = [1,3,5,6], 0
p search_insert(nums, target)
