def can_complete_circuit(gas, cost)
  size = gas.size
  size.times do |i|
    count = 0
    while count < size
      index = (count + i) % size
      dif = dif + gas[index] - cost[index]
      if dif < 0
        break
      end
      count += 1
    end
    return i if count == size
  end
  -1
end
