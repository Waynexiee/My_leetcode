def integer_break(n)
  s = []
  s[1] = 1
  s[2] = 1
  s[3] = 2
  (3..n).each do |i|
    max = 0
    (1..i-1).each do |j|
      max = [max, s[j] * s[i-j], j * (i-j), s[j] * (i-j), j * s[i-j]].max
    end
    s[i] = max
    p s 
  end
  s[n]
end

puts integer_break(10)
