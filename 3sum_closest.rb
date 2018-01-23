def three_sum_closest(nums, target)
  nums.sort!
  size = nums.size
  i = 0
  min = 2 ** 31
  mark = 1
  while i < size - 2
    l = i + 1
    r = size - 1
    temp_last = 0
    while l < r
      temp = nums[i] + nums[l] + nums[r] - target
      if temp == 0
        return target
      elsif temp > 0
        r -= 1
        if min > temp
          mark = 1
          min = temp
        end
      else
        l += 1
        if min > -temp
          mark = -1
          min = -temp
        end
      end
      # break if temp * temp_last < 0 && i > 0
      # temp_last = temp
    end
    i += 1
  end
  min * mark + target
end

nums = [1,2,4,8,16,32,64,128]

target = 82

puts three_sum_closest(nums, target)
