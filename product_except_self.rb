def product_except_self(nums)
  size = nums.size
  res = []
  res[0] = 1
  1.upto(size - 1) do |i|
    res[i] = res[i - 1] * nums[i - 1]
  end
  right = 1
  (size - 1).downto(0) do |i|
    res[i] = res[i] * right
    right *= nums[i]
  end
  res
end

nums = [1,2,3,4]
p product_except_self(nums)
