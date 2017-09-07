def rotate(matrix)
  n = matrix.size
  iend = 2
  istart = 0
  while n - iend >= istart
    (istart..n-iend).each do |i|
      matrix[i][istart], matrix[n - 1 - istart][i], matrix[n - 1 - i][n - 1 - istart], matrix[istart][n - 1 - i] =
      matrix[n - 1 - istart][i], matrix[n - 1 - i][n - 1 - istart], matrix[istart][n - 1 - i], matrix[i][istart]
    end
    istart += 1
    iend += 1
  end
end

matrix = [  [ 5, 1, 9,11],
            [ 2, 4, 8,10],
            [13, 3, 6, 7],
            [15,14,12,16]]
rotate(matrix)
p matrix
