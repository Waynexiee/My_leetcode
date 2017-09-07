def top_k_frequent(nums, k)
  h = {}
  arr = []
  nums.each do |i|
    if h[i]
      h[i] += 1
    else
      h[i] = 1
    end
  end
  h = h.sort_by {|key, value| value}
  p h
  k.times do
    arr << h.pop[0]
  end
  arr
end
nums = [3,0,1,0]
p top_k_frequent(nums, 1)
