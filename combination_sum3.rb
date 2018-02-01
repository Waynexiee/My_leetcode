def combination_sum3(k, n)
  ret = []
  visited = [false] * 11
  add(ret, k, n, 0, Array.new, visited)
  ret
end

def add(ret, k, n, sum, temp, visited)
  if k == 0 && sum == n
    ret.push(temp.dup)
    return
  end
  start = 1
  start = temp[-1] + 1 unless temp.empty?
  (start..9).each do |i|
    next if visited[i]
    visited[i] = true
    temp.push(i)
    add(ret, k-1, n, sum + i, temp, visited)
    visited[i] = false
    temp.pop
  end
end

p combination_sum3(3,9)
