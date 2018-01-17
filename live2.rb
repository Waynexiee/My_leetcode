def sub_array(arr)
  arr_sorted = arr.sort
  left, right = -1, -1
  arr.each_with_index do |ele, idx|
    if ele != arr_sorted[idx] && left < 0
      left = idx
      right = idx
    elsif ele != arr_sorted[idx] && left > 0
      right = idx
    end
  end
  return 0 if left == -1
  right - left + 1
end

arr = [1,2,3,8,7,6,12]
p sub_array(arr)
