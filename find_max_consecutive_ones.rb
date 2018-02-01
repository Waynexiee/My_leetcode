def find_max_consecutive_ones(nums)
  max = 0
  count = 0
  nums.each do |e|
    if e == 1
      count += 1
    else
      max = [max, count].max
      count = 0
    end
  end
  [max, count].max
end
nums = [1,1,0,1,1,1]
puts find_max_consecutive_ones(nums)
