def min_path_sum(grid)
  row = grid.size
  column = grid[0].size
  ret = []
  row.times { ret.push([]) }
  ret[0][0] = grid[0][0]
  grid.each_with_index do |r, i|
    r.each_with_index do |c, j|
      next if i == 0 && j == 0
      if i == 0
        ret[i][j] = ret[i][j-1] + c
      elsif j == 0
        ret[i][j] = ret[i-1][j] + c
      else
        ret[i][j] = [ret[i-1][j], ret[i][j-1]].min + c
      end
    end
  end
  ret[row-1][column-1]
end

grid = [[1,3,1],
        [1,5,1],
        [4,2,1]]
p min_path_sum(grid)
