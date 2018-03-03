
def wiggle_max_length(nums)
  mark = true
  mark2 = true
  max = 0
  max2 = 0
  pre = nil
  pre2 = nil
  nums.each_with_index do |e, idx|
    if idx == 0
      pre = e
      pre2 = e
      max = 1
      max2 = 1
      next
    end
    if mark
      if e > pre
        mark = false
        pre = e
        max += 1
      elsif e < pre
        pre = e
      end
    else
      if e < pre
        mark = true
        pre = e
        max += 1
      elsif e > pre
        pre = e
      end
    end
    if mark2
      if e < pre2
        mark2 = false
        pre2 = e
        max2 += 1
      elsif e > pre2
        pre2 = e
      end
    else
      if e > pre2
        mark2 = true
        pre2 = e
        max2 += 1
      elsif e < pre2
        pre2 = e
      end
    end
  end
  [max, max2].max
end

nums = [3,3,3,2,5]
puts wiggle_max_length(nums)
