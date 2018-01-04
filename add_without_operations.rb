def get_sum(a, b)
  while b != 0
    carry = a & b
    a = a ^ b
    b = carry << 1
  end
  return a
end

puts get_sum(-2,4)
