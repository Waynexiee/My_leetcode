def num_trees(n)
  global = Array.new(n + 1) {|n| 0}
  global[0] = 1
  global[1] = 1
  ret = 0
  (2..n).each do |i|
    (0..i-1).each do |j|
      global[i] += global[j] * global[i-1-j])
    end
  end
  global[n]
end

puts num_trees(3)
