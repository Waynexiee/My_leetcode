def three_sum(nums)
    nums.sort!
    size = nums.size
    arr_return = []
    i = 0
    while i < size - 2
        i += 1 while nums[i] == nums[i - 1] && i > 0
        left = i + 1
        right = size - 1
        while left < right
          if nums[i] + nums[left] + nums[right] > 0
            right -= 1
          elsif nums[i] + nums[left] + nums[right] < 0
            left += 1
          else
            arr_return << [nums[i], nums[left], nums[right]]
            left += 1 while nums[left] == nums[left + 1]
            right -= 1 while nums[right] == nums[right - 1]
            left += 1
            right -= 1
          end
        end
        i += 1
    end
    arr_return
end

s = [-1, 0, 1, 2, -1, -4]
p three_sum(s)
