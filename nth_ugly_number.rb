def nth_ugly_number(n)
  arr = [1]
  t2 = 0
  t3 = 0
  t5 = 0
  (1..n-1).each do |i|
    arr[i] = [arr[t2] * 2, arr[t3] * 3, arr[t5] * 5].min
    if arr[i] == arr[t2] * 2
      t2 += 1
    end

    if arr[i] == arr[t3] * 3
      t3 += 1
    end
    
    if arr[i] == arr[t5] * 5
      t5 += 1
    end
  end
  return arr[n-1]
end

puts nth_ugly_number(10)
