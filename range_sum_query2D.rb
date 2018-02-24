class NumMatrix

=begin
  :type matrix: Integer[][]
=end
  def initialize(matrix)
    row = matrix.size
    col = matrix[0].size
    @col = col
    @matrix = []
    (0..row-1).each do |i|
      (0..col-1).each do |j|
        @matrix[i * col + j] = matrix[i][j]
        @matrix[i * col + j] += @matrix[(i - 1) * col + j] if i - 1 >= 0
        @matrix[i * col + j] += @matrix[i * col + j - 1] if j - 1 >= 0
        @matrix[i * col + j] -= @matrix[(i - 1) * col + j - 1] if j - 1 >= 0 && i - 1 >= 0
      end
    end
  end


=begin
  :type row1: Integer
  :type col1: Integer
  :type row2: Integer
  :type col2: Integer
  :rtype: Integer
=end
  def sum_region(row1, col1, row2, col2)
    ret = 0
    ret = @matrix[row2 * @col + col2] 
    ret -= @matrix[(row1 - 1) * @col + col2] if row1 - 1 >= 0
    ret -= @matrix[row2 * @col + col1 - 1] if col1 - 1 >= 0
    ret += @matrix[(row1 - 1) * @col + col1 - 1] if row1 - 1 >= 0 && col1 - 1 >= 0
  end


end

# Your NumMatrix object will be instantiated and called as such:
matrix = [
  [3, 0, 1, 4, 2],
  [5, 6, 3, 2, 1],
  [1, 2, 0, 1, 5],
  [4, 1, 0, 1, 7],
  [1, 0, 3, 0, 5]
]
obj = NumMatrix.new(matrix)
p obj.sum_region(2, 1, 4, 3)
p obj.sum_region(1, 1, 2, 2)
p obj.sum_region(1, 2, 2, 4)
