def num_squares(n)
  start = Math.sqrt(n).to_i
  result = [0]
  m = 1
  while m <= n
    i = 1
    min = 1000000
    while i * i <= m
      min = result[m - i * i] + 1 if min > result[m - i * i] + 1
      i += 1
    end
    result << min
    m += 1
  end
  result[n]
end

puts num_squares(43)
