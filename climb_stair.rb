def climb_stairs(n)
  if n == 1
    return 1
  elsif n == 2
    return 2
  elsif n == 3
    return 3
  end
  a = [1,2,3]
  (3..n-1).each do |i|
    a[i] = a[i-1] + a[i-2]
  end
  a[n-1]
end


puts climb_stairs(5)
