def increasing_triplet(nums)
  ret = [nums[0]]
  nums.each do |num|
    mark = false
    ret.map! do |ele|
      if !mark && num <= ele
        mark = true
        num
      else
        ele
      end
    end
    ret.push(num) unless mark
    return true if ret.size == 3
  end
  false
end

puts increasing_triplet([2,5,3,4,5])
