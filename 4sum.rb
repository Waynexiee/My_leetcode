def four_sum(nums, target)
  nums.sort!
  ret = []
  size = nums.size
  (0..size - 4).each do |i|
    next if nums[i] == nums[i - 1] && i > 0
    three_sum_closest(nums[i+1..-1], target - nums[i], size - i - 1, ret, nums[i])
  end
  ret.uniq 
end

def three_sum_closest(nums, target, size, ret, num)
  i = 0
  while i < size - 2
    l = i + 1
    r = size - 1
    while l < r
      temp = nums[i] + nums[l] + nums[r] - target
      if temp == 0
        ret.push([num, nums[i], nums[l], nums[r]])
        l += 1
        r -= 1
      elsif temp > 0
        r -= 1
      else
        l += 1
      end
    end
    i += 1
  end
end

nums = [-493,-470,-464,-453,-451,-446,-445,-407,-406,-393,-328,-312,-307,-303,-259,-253,-252,-243,-221,-193,-126,-126,-122,-117,-106,-105,-101,-71,-20,-12,3,4,20,20,54,84,98,111,148,149,152,171,175,176,211,218,227,331,352,389,410,420,448,485]
nums = [1,0,-1,0,-2,2]
target = 0
p four_sum(nums, target)
