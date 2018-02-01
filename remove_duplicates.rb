def remove_duplicates(nums)
  obj = {}
  size = nums.size
  size.times do
    temp = nums.shift
    if obj[temp]
      obj[temp] += 1
      if obj[temp] <= 2
        nums.push(temp)
      end
    else
      obj[temp] = 1
      nums.push(temp)
    end
  end
  nums.size
end

nums = [1,1,1,2,2,3]
p remove_duplicates(nums)
