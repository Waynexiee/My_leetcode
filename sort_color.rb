def sort_colors(nums)
  size = nums.size
  zero = 0
  second = size - 1
  0.upto(size - 1) do |i|
    while nums[zero] == 0
      zero += 1
    end

    while nums[second] == 2
      second -= 1
    end


    if nums[i] == 2 && i < second
      nums[second], nums[i] = nums[i], nums[second]
      second -= 1
    end
    if nums[i] == 0 && i > zero
      nums[zero], nums[i] = nums[i], nums[zero]
      zero += 1
    end
  end
  puts zero,second
end

nums = [0,1,2,2,1,2,0,2,1,0]
sort_colors(nums)
p nums
