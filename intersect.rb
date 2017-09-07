def intersect(nums1, nums2)
  size1 = nums1.size
  size2 = nums2.size
  h = {}
  arr = []
  nums1.each do |i|
    if h[i]
      h[i] += 1
    else
      h[i] = 1
    end
  end

  nums2.each do |i|
    if h[i] && h[i] > 0
      arr << i
      h[i] -= 1
    end
  end

  arr
end

nums1 = [1, 2, 2, 1]
nums2 = [2, 2]
p intersect(nums1, nums2)
