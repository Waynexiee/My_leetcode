def network_delay_time(times, n, k)
  temp = []
  (n+1).times do |i|
    temp.push([])
  end
  times.each do |e|
    temp[e[0]][e[1]] = e[2]
  end
  times = temp
  ret = [1000000] * (n + 1)
  ret[0] = 0
  ret[k] = 0
  stack = []
  visited = [false] * (n + 1)
  visited[0] = true
  visited[k] = true
  times[k].each_with_index do |d, idx|
    if d
      ret[idx] = d
      stack.push(idx)
    end
  end
  d_trave(stack, ret, times, visited)
  return -1 if visited.include?(false)
  ret.max
end

def d_trave(stack, ret, times, visited)
  return if stack.empty?
  temp = stack.shift
  visited[temp] = true
  times[temp].each_with_index do |d, idx|
    if d
      mark = 0
      if d+ret[temp] < ret[idx]
        ret[idx] = d + ret[temp]
        mark = 1
      end
      stack.push(idx) if !visited[idx] || mark == 1

    end
  end
  d_trave(stack, ret, times, visited)
end

times = [[2,4,10],[5,2,38],[3,4,33],[4,2,76],[3,2,64],[1,5,54],[1,4,98],[2,3,61],[2,1,0],[3,5,77],[5,1,34],[3,1,79],[5,3,2],[1,2,59],[4,3,46],[5,4,44],[2,5,89],[4,5,21],[1,3,86],[4,1,95]]
n = 5
k = 1

 
p network_delay_time(times, n, k)
