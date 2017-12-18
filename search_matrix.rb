def search_matrix(matrix, target)
  if matrix.empty? || matrix[0].empty?
    return false
  end
  size = matrix.size
  size.times do |i|
    if matrix[i][0] > target
      break
    end
    if binarySearch(matrix[i],target) == true
      return true
    end
  end
  return false
end

def binarySearch(arr, target)
  left = 0
  right = arr.size - 1
  while(left <= right)
    mid = (left + right) / 2
    if arr[mid] == target
      return true
    elsif arr[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
  false
end

matrix = [
  [1,   4,  7, 11, 15],
  [2,   5,  8, 12, 19]
]


puts search_matrix(matrix, 5)
