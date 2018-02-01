def summary_ranges(nums)
  ret = []
  size = nums.size
  mark = true
  temp = []
  (0..size-2).each do |i|
    if nums[i] + 1 == nums[i+1]
      if mark
        temp.push(nums[i])
        mark = false
      end
    else
      if mark
        ret.push(nums[i].to_s)
      else
        ret.push(temp.pop.to_s + "->" + nums[i].to_s)
        mark = true
      end
    end
  end
  unless mark
    ret.push(temp.pop.to_s + "->" + nums[size-1].to_s)
  else
    ret.push(nums[size-1].to_s)
  end
  ret
end

nums = [0,1,2,4,5,7]
# nums = [0,2,3,4,6,8,9]
p summary_ranges(nums)
