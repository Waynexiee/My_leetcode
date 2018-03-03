def count_numbers_with_unique_digits(n)
  s = [1,10,91]
  mul = 81
  n = 10 if n > 10
  (3..n).each do |i|
    mul *= 11 - i
    s[i] = s[i-1] + mul
  end
  s[n]
end

puts count_numbers_with_unique_digits(14)
