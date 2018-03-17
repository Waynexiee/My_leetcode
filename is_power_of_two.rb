def is_power_of_two(n)
  temp = n.to_s(2)
  if temp.size > 1 && temp[0] == '1' && temp.count('1') == 1
    return true
  else
    return false
  end
end

puts is_power_of_two(8)
