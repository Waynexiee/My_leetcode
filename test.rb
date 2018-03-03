def number_of_arithmetic_slices(a)
  size = a.size
  return 0 if size < 3
  count = {}
  mem = a[1] - a[0]
  sum = 1
  (2..size-1).each do |i|
    if a[i] - a[i - 1] == mem
      sum += 1
    else
      if count[sum]
        count[sum] += 1
      else
        count[sum] = 1
      end
      mem = a[i] - a[i - 1]
      sum = 1
    end
  end
  if sum >= 2
    if count[sum]
      count[sum] += 1
    else
      count[sum] = 1
    end
  end

  ret = 0
  count.each do |k, v|
    if k >= 2
      ret += (k - 1) * k * v / 2
    end
  end
  ret
end

a = [1,2,3,4,2,3,4,5,6]
puts number_of_arithmetic_slices(a)
