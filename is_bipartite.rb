def is_bipartite(graph)
  graph.each_with_index do |v, i|
    v.each do |e|
      return false unless ((graph[e] - [i]) & (v - [e])).empty?
    end
  end
  true
end

graph = [[1,2,3], [0,2], [0,1,3], [0,2]]
puts is_bipartite(graph)
