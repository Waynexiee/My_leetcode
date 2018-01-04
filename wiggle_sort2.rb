def wiggle_sort(nums)
  size = nums.size
  nums_sort = nums.sort
  i = (size - 1) / 2
  j = size - 1
  size.times do |k|
    if k.even?
      nums[k] = nums_sort[i]
      i -= 1
    else
      nums[k] = nums_sort[j]
      j -= 1
    end
  end
end


nums = [4,5,5,6]
wiggle_sort(nums)
p nums
