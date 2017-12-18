def kth_smallest(matrix, k)
  size = matrix.size
  left = matrix[0][0]
  right = matrix[size-1][size-1]
  while left < right
    mid = (left + right) / 2
    count = 0
    0.upto(size - 1) do |i|
      count += matrix[i].count {|ele| ele <= mid}
    end
    if count < k
      left = mid + 1
    else
      right = mid
    end
  end
  return left 
end

matrix = [[1,3,5],
          [6,7,12],
          [11,14,14]]

k = 3
puts kth_smallest(matrix,k)
