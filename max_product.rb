def max_product(nums)
  min_num = nums[0]
  max_num = nums[0]
  res = max_num
  1.upto(nums.size - 1) do |i|
    if nums[i] < 0
      min_num, max_num = max_num, min_num
    end
    min_num = [nums[i], min_num * nums[i]].min
    max_num = [nums[i], max_num * nums[i]].max
    res = [res,max_num].max
  end
  res
end

nums = [2,3,-2,4]
p max_product(nums)
