
def find_order(num_courses, prerequisites)
  indegree = [0] * num_courses
  outdegree = []
  queue = []
  ret = []
  prerequisites.each do |arr|
    indegree[arr[1]] += 1
    if outdegree[arr[0]].nil?
      outdegree[arr[0]] = [arr[1]]
    else
      outdegree[arr[0]].push(arr[1])
    end
  end
  indegree.each_with_index do |ele, idx|
    if ele == 0
      queue.push(idx)
      ret.push(idx)
    end
  end
  count = 0
  while !queue.empty?
    count += 1
    index = queue.pop
    if outdegree[index]
      outdegree[index].each do |arr|
        indegree[arr] -= 1
        if indegree[arr] == 0
          queue.push(arr)
          ret.push(arr)
        end
      end
    end
  end
  return [] unless count == num_courses
  ret.reverse
end

p find_order(2, [[1,0]])
p find_order(4, [[1,0],[2,0],[3,1],[3,2]])
