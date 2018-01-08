def num_islands(grid)
  return 0 if grid.empty? || grid[0].empty?
  row = grid.size
  column = grid[0].size
  visited = []
  count = 0
  row.times { visited.push([false] * column) }
  row.times do |i|
    column.times do |j|
      if !visited[i][j] && grid[i][j]=="1"
        count += 1
        DFS(i,j,visited,grid,row,column)
      end
    end
  end
  count
end

def DFS(i,j,visited,grid,row,column)
  if !visited[i][j] && grid[i][j] == "1"
    visited[i][j] = true
    DFS(i+1,j,visited,grid,row,column) if i+1 < row
    DFS(i-1,j,visited,grid,row,column) if i-1 >= 0
    DFS(i,j-1,visited,grid,row,column) if j-1 >= 0
    DFS(i,j+1,visited,grid,row,column) if j+1 <= column
  end
end

grid = [["1","1","1","1","0"],["1","1","0","1","0"],["1","1","0","0","0"],["0","0","0","0","0"]]


puts num_islands(grid)
