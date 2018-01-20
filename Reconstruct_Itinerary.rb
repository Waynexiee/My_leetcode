def find_itinerary(tickets)
  size = tickets.size
  tickets.sort!
  visited = [false] * size
  ret = []
  tickets
  find(visited, size, tickets, ret, ["JFK"], "JFK")
  ret[0]
end

def find(visited, size, tickets, ret, temp, target)
  return unless ret.empty?
  if size == 0
    ret.push(temp.dup)
    return
  end
  tickets.each_with_index do |e, idx|
    next if visited[idx]
    if target == e[0]
      visited[idx] = true
      temp.push(e[1])
      find(visited, size - 1, tickets, ret, temp ,e[1])
      visited[idx] = false
      temp.pop
    end
  end
end

tickets = [["JFK","SFO"],["JFK","ATL"],["SFO","ATL"],["ATL","JFK"],["ATL","SFO"]]
p find_itinerary(tickets)
