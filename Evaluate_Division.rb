def calc_equation(equations, values, queries)
  table = {}
  ret = []
  equations.each_with_index do |e, idx|
    table[e[0]] = {} unless table[e[0]]
    table[e[0]][e[1]] = values[idx]
    table[e[0]][e[0]] = 1.0
    table[e[1]] = {} unless table[e[1]]
    table[e[1]][e[0]] = 1.0 / values[idx]
    table[e[1]][e[1]] = 1.0
  end

  table.each do |k, v|
    v.keys.permutation(2).to_a.each do |i, j|
      table[i][j] = table[i][k] * table[k][j]
    end
  end

  queries.each do |e|
    if table[e[0]] && table[e[0]][e[1]]
      ret.push(table[e[0]][e[1]])
    else
      ret.push(-1.0)
    end
  end
  ret
end


equations = [ ["a", "b"], ["b", "c"] ]
values = [2.0, 3.0]
queries = [ ["a", "c"], ["b", "a"], ["a", "e"], ["a", "a"], ["x", "x"] ]

p calc_equation(equations, values, queries)
