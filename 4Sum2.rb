def four_sum_count(a, b, c, d)
  size = a.size
  h = {}
  sum = 0
  0.upto(size - 1) do |i|
    0.upto(size - 1) do |j|
      h[a[i] + b[j]] = [] unless h[a[i] + b[j]]
      h[a[i] + b[j]] << [a[i],b[j]]
    end
  end

  0.upto(size - 1) do |i|
    0.upto(size - 1) do |j|
      sum += h[-(c[i] + d[j])].size if h[-(c[i] + d[j])]
    end
  end

  sum
end

A = [ 1, 2]
B = [-2,-1]
C = [-1, 2]
D = [ 0, 2]

puts four_sum_count(A, B, C, D)
