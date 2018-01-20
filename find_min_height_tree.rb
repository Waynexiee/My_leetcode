def find_min_height_trees(n, edges)
  return [0] if n == 1
  obj = {}
  edges.each do |arr|
    if obj[arr[0]]
      obj[arr[0]].push(arr[1])
    else
      obj[arr[0]] = [arr[1]]
    end
    if obj[arr[1]]
      obj[arr[1]].push(arr[0])
    else
      obj[arr[1]] = [arr[0]]
    end
  end

  leaves = []
  obj.each do |k, v|
    if v.length == 1
      leaves.push(k)
    end

  end

  while n > 2
    n -= leaves.length
    new_leaves = []
    leaves.each do |i|
      j = obj[i].pop
      obj[j].delete(i)
      if obj[j].length == 1
        new_leaves.push(j)
      end
    end
    leaves = new_leaves
  end
  leaves
end

n = 6
edges = [[0,1],[0,2],[0,3],[3,4],[4,5]]
p find_min_height_trees(n, edges)
