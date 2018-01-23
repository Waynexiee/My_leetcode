def is_toeplitz_matrix(matrix)
  obj = {}
  matrix.each_with_index do |nums, row|
    nums.each_with_index do |num, col|
      if obj[row - col]
        return false unless obj[row - col] == num
      else
        obj[row - col] = num
      end
    end
  end
  true
end

matrix =[[1,2],[2,2]]
puts is_toeplitz_matrix(matrix)
