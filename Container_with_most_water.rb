def max_area(height)
  size = height.size - 1
  i = 0
  j = size
  max_volumn = 0
  while i < j
    min = height[i] < height[j] ? height[i] : height[j]
    max_volumn = (j - i) * min if max_volumn < (j - i) * min
    i += 1 while height[i] <= min && i < j
    j -= 1 while height[j] <= min && i < j
  end
  max_volumn
end
