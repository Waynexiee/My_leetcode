def solve(board)
  return board if board.empty? || board.size < 3 || board[0].size < 3
  row = board.size
  column = board[0].size
  visited = []
  count = 0
  row.times { visited.push([false] * column) }
  queue = []
  stack = []
  (1..row-2).each do |ii|
    (1..column-2).each do |jj|
      i,j = ii,jj
      mark = [false]
      if !visited[i][j] && board[i][j]=="O"
        visited[i][j] = true
        queue.push([i,j])
        loop do
          if i+1 < row && !visited[i+1][j] && board[i+1][j] == "O"
            unless DFS(i+1,j,visited,board,row,column,queue)
              mark[0] = true

            else
              stack.push([i+1,j])
            end
          end
          if i-1 >= 0 && !visited[i-1][j] && board[i-1][j] == "O"
            unless DFS(i-1,j,visited,board,row,column,queue)
              mark[0] = true

            else
              stack.push([i-1,j])
            end
          end
          if j-1 >= 0 && !visited[i][j-1] && board[i][j-1] == "O"
            unless DFS(i,j-1,visited,board,row,column,queue)
              mark[0] = true
            else
              stack.push([i,j-1])
            end
          end
          if j+1 < column && !visited[i][j+1] && board[i][j+1] == "O"
            unless DFS(i,j+1,visited,board,row,column,queue)
              mark[0] = true
            else
              stack.push([i,j+1])
            end
          end

          break if stack.empty?
          arr = stack.pop
          i,j = arr[0],arr[1]
        end
      end

      unless mark[0]
        queue.each do |arr|
          board[arr[0]][arr[1]] = 'X'
        end
      end
      queue = []
      stack = []
    end
  end
  nil
end

def DFS(i,j,visited,board,row,column,queue)
  visited[i][j] = true
  if i == 0 || i == row-1 || j == 0 || j == column - 1
    return false
  end
  queue.push([i,j])
  true
end


board = [["X","X","X"],["X","O","X"],["X","X","X"]]
# board = [ ["X","O","O","X","X","X","O","X","O","O"],
#           ["X","O","X","X","X","X","X","X","X","X"],
#           ["X","X","X","X","O","X","X","X","X","X"],
#           ["X","O","X","X","X","O","X","X","X","O"],
#           ["O","X","X","X","O","X","O","X","O","X"],
#           ["X","X","O","X","X","O","O","X","X","X"],
#           ["O","X","X","O","O","X","O","X","X","O"],
#           ["O","X","X","X","X","X","O","X","X","X"],
#           ["X","O","O","X","X","O","X","X","O","O"],
#           ["X","X","X","O","O","X","O","X","X","O"]]
solve(board)

p board
