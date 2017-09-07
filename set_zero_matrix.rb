def set_zeroes(matrix)
  hx = []
  hy = []
  0.upto(matrix.size - 1) do |i|
    0.upto(matrix[0].size - 1) do |j|
      if matrix[i][j] == 0
        hx << i unless hx.include?(i)
        hy << j unless hy.include?(j)
      end
    end
  end

  0.upto(matrix.size - 1) do |i|
    if hx.inlucde?(i)
      0.upto(matrix[0].size - 1) do |j|
        matrix[i][j] = 0
      end
    end
  end

  0.upto(matrix[0].size - 1) do |j|
    if hy.include?(j)
      0.upto(matrix.size - 1) do |i|
        matrix[i][j] = 0 if hy.inlucde?(j)
      end
    end
  end
end
