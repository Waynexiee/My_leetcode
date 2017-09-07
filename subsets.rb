def subsets(nums)
  size = nums.size
  res = []
  0.upto(size) do |i|
      res += nums.combination(i).to_a
  end
  res
end

nums = [1 ,2 ,3]

p subsets(nums)
