def contains_nearby_duplicate(nums, k)
  h = {}
  nums.each_with_index do |e, idx|
    if h[e]
      return true if idx - h[e][-1] <= k
      h[e].push(idx)
    else
      h[e] = [idx]
    end
  end
  false
end
