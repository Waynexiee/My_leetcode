def find_peak_element(nums)
  return nil if nums.size < 1
  return 0 if nums.size == 1
  size = nums.size
  nums[size] = -2147483648
  0.upto(size - 1) do |i|
    if nums[i] > nums[i - 1] && nums[i] > nums[i + 1]
      return i
    end
  end
  nil
end

nums = [1, 2, 3, 1]
puts find_peak_element(nums)
