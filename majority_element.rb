def majority_element(nums)
  size = nums.size
  count = size / 3
  h = {}
  nums.each do |e|
    if h[e]
      h[e] += 1
    else
      h[e] = 1
    end
  end
  h.select {|k,v| v > count}.keys
end

nums = [1]
p majority_element(nums)
