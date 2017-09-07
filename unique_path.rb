def unique_paths(m, n)
  matrix = []
  m.times {matrix << []}

  0.upto(m - 1) do |i|
    matrix[i][n - 1] = 1
  end

  0.upto(n - 1) do |j|
    matrix[m - 1][j] = 1
  end

  (m - 2).downto(0) do |i|
    (n - 2).downto(0) do |j|
      matrix[i][j] = matrix[i][j + 1] + matrix[i + 1][j]
    end
  end
  matrix[0][0]
end
m, n = 3, 7
puts unique_paths(m, n)
