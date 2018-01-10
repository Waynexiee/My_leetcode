def min_cost_climbing_stairs(cost)
  size = cost.size
  return 0 if size < 2
  ret = [2**32] * size
  ret[0] = cost[0]
  ret[1] = cost[1]
  (2..size-1).each do |idx|
    ret[idx] = cost[idx] + [ret[idx - 1], ret[idx - 2]].min
  end
  [ret[-1], ret[size - 2]].min
end
cost = [10, 15, 20]
cost = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]
puts min_cost_climbing_stairs(cost)
