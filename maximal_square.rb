def maximal_square(matrix)
  ret = []
  size = matrix.size
  size2 = matrix[0].size
  max = 0
  size.times {ret.push([])}
  (0..size-1).each do |i|
    ret[i][0] = matrix[i][0]
    max = [max, matrix[i][0]].max
  end
  (0..size2-1).each do |i|
    ret[0][i] = matrix[0][i]
    max = [max, matrix[0][i]].max
  end

  (1..size-1).each do |i|
    (1..size2-1).each do |j|
      if matrix[i][j] == 1
        ret[i][j] = [ret[i-1][j-1], ret[i][j-1], ret[i-1][j]].min + 1
        max = [max, ret[i][j]].max
      else
        ret[i][j] = 0
      end
    end
  end
  max ** 2
end

matrix = [[1, 0, 1, 0, 0],
[1, 0, 1, 1, 1],
[1, 1, 1, 1, 1],
[1, 0, 0, 1, 0]]
p maximal_square(matrix)
