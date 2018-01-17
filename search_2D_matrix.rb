def search_matrix(matrix, target)
  return false if matrix.nil? || matrix.empty? || matrix[0].empty?
  l = 0
  r = matrix.size - 1
  while l <= r
    middle = (l + r) / 2
    l_rem, r_rem = l, r
    if matrix[middle][0] == target
      return true
    elsif matrix[middle][0] > target
      r = middle
    else
      l = middle + 1
    end
    break if [l_rem, r_rem] == [l, r]
  end
  if matrix[r][0] < target
    row = r 
  else
    row = r - 1
  end
  l = 1
  r = matrix[0].size - 1
  while l <= r
    middle = (l + r) / 2
    l_rem, r_rem = l, r
    if matrix[row][middle] == target
      return true
    elsif matrix[row][middle] > target
      r = middle
    else
      l = middle + 1
    end
    return false if [l_rem, r_rem] == [l, r]
  end
  false
end

matrix = [
  [1,   3,  5,  7],
  [10, 11, 16, 20],
  [23, 30, 34, 50]
]
matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,50]]
target = 30

puts search_matrix(matrix, target)
