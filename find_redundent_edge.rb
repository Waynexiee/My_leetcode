def find_redundant_connection(edges)
  parent = []
  edges.each do |e|
    x = find(parent, e[0])
    y = find(parent, e[1])
    return e if x == y
    parent[x] = y
  end
end

def find(parent, i)
  if parent[i]
    return find(parent, parent[i])
  else
    return i
  end
end



edges = [[3,4],[1,2],[2,4],[3,5],[2,5]]
p find_redundant_connection(edges)
