def unique_paths_with_obstacles(obstacle_grid)
  return 0 if obstacle_grid.empty? || obstacle_grid[0].empty?
  ret = []
  time = obstacle_grid.size
  size = obstacle_grid[0].size
  time.times {ret.push([0] * size)}
  if obstacle_grid[0][0] == 0
    ret[0][0] = 1
  else
    return 0
  end
  (1..time-1).each {|i| ret[i][0] = obstacle_grid[i][0] == 0 ? ret[i-1][0] : 0}
  (1..size-1).each {|i| ret[0][i] = obstacle_grid[0][i] == 0 ? ret[0][i-1] : 0}
  (1..time-1).each do |i|
    (1..size-1).each do |j|
      if obstacle_grid[i][j] == 0
        ret[i][j] = ret[i-1][j] + ret[i][j-1]
      else
        ret[i][j] = 0
      end
    end
  end
  p ret
  ret[time-1][size-1]
end

obstacle_grid=[
  [0,0,0],
  [0,1,0],
  [0,0,0]
]

p unique_paths_with_obstacles(obstacle_grid)
