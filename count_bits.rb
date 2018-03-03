def count_bits(num)
  f = [0]
  (1..num).each do |i|
    f[i] = f[i / 2] + i % 2
  end
  f
end

p count_bits(5)
