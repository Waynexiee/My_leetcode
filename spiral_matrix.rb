def spiral_order(matrix)
  return [] if matrix.empty? || matrix[0].empty?
  ceiling = 0
  botton = matrix.size - 1
  left = 0
  right = matrix[0].size - 1
  i = 0
  j = 0
  res = []
  while left <= right && ceiling <= botton
    break if j > right
    while j  <= right
      res << matrix[i][j]
      break unless j + 1 <= right
      j += 1
    end
    ceiling += 1
    i = ceiling

    break if i  > botton
    while i  <= botton
      res << matrix[i][j]
      break unless i + 1 <= botton
      i += 1
    end
    right -= 1
    j = right

    break if j < left
    while j >= left
      res << matrix[i][j]
      break unless j - 1 >= left
      j -= 1
    end
    botton -= 1
    i = botton

    break if i < ceiling
    while i >= ceiling
      res << matrix[i][j]
      break unless i - 1 >= ceiling
      i -= 1
    end
    left += 1
    j = left
    puts j

  end
  res
end

matrix = [[1, 2, 3, 4, 5],
          [6, 7, 8, 9, 10],
          [11,12,13,14,15],
          [16,17,18,19,20],
          [21,22,23,24,25]]

p spiral_order(matrix)
