def trap(height)
  left = 0
  right = height.size - 1
  con = 0
  min = 0
  left += 1 while height[left] == 0 && left < right
  right -= 1 while height[right] == 0 && left < right
  while left < right
    if height[left] <= height[right]
      min = height[left] if height[left] > min
      left += 1
      con += min - height[left] > 0 ? min - height[left] : 0
    else
      min = height[right] if height[right] > min
      right -= 1
      con += min - height[right] > 0 ? min - height[right] : 0
    end
  end
  con
end

height = [0,1,0,2,1,0,1,3,2,1,2,1]
puts trap(height)
