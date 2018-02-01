def generate_matrix(n)
  ret = []
  n.times {ret.push([])}
  count = 1
  i, j = 0, 0
  loop do
    while j < n && ret[i][j].nil?
      ret[i][j] = count
      count += 1
      j += 1
    end
    break if count > n * n
    i += 1
    j -= 1
    while i < n && ret[i][j].nil?
      ret[i][j] = count
      count += 1
      i += 1
    end
    break if count > n * n
    i -= 1
    j -= 1
    while j >= 0 && ret[i][j].nil?
      ret[i][j] = count
      count += 1
      j -= 1
    end
    break if count > n * n
    j += 1
    i -= 1
    while i >= 0 && ret[i][j].nil?
      ret[i][j] = count
      count += 1
      i -= 1
    end
    break if count > n * n
    i += 1
    j += 1
  end
  ret
end
p generate_matrix(4)
