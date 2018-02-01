def find_disappeared_numbers(nums)
  ret = []
  nums.each do |e|
    nums[e.abs - 1] *= -1  unless nums[e.abs - 1] < 0
  end

  nums.each_with_index do |e, idx|
    ret.push(idx+1) if e > 0
  end
  ret
end

nums = [4,3,2,7,8,2,3,1]
p find_disappeared_numbers(nums)
