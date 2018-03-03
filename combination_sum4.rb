def combination_sum4(nums, target)
  ret = [0] * (target + 1)
  ret[0] = 1
  (1..target).each do |i|
    nums.each do |e|
      if i - e >= 0
        ret[i] += ret[i - e]
      end
    end
  end
  ret[target]
end


nums = [3,2,1]
target = 4
puts combination_sum4(nums, target)
