def move_zeroes(nums)
  size = nums.size
  size.times do |i|
    if nums[i] == 0
      j = i + 1
      while nums[j] == 0
        j += 1
      end
      break if j > size - 1
      nums[i],nums[j] = nums[j],nums[i]
    end
  end
end
nums = [0, 1, 0, 3, 12]
move_zeroes(nums)
puts nums
