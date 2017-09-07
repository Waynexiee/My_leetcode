def exist(board, word)
  m = board.size
  n = board[0].size
  0.upto(m - 1) do |i|
    0.upto(n - 1) do |j|
      return true if isFound?(board, word, 0, i, j)
    end
  end
  false
end

def isFound?(board, word, num, x, y)
  return false if(x < 0 || y < 0 || board[x] == nil || board[x][y] == nil || board[x][y] == " " || word[num]!=board[x][y])
  t = board[x][y]
  board[x][y] = " "
  return true if isFound?(board, word, num + 1, x, y + 1) || isFound?(board, word, num + 1, x + 1, y) || isFound?(board, word, num + 1, x - 1, y) || isFound?(board, word, num + 1, x, y - 1) || word[num + 1] == nil
  board[x][y] = t
  false
end

board = ["aaa","abb","abb","bbb","bbb","aaa","bbb","abb","aab","aba"]
word = "aabaaaabbb"

puts exist(board,word)
