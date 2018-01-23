def count_prime_set_bits(l, r)
  count = 0
  (l..r).each do |e|
    count += 1 if prime?(e.to_s(2).count("1"))
  end
  count
end

def prime?(num)
  return false if num == 1
  return true if num == 2
  (2..num-1).each do |e|
    return false if num % e == 0
  end
  true
end

puts count_prime_set_bits(6, 10)
puts count_prime_set_bits(10, 15)
