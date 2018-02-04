def kth_grammar(n, k)
  count = 0
  arr = [0,1,1,0,1,0,0,1]


  while k > 8
    max = 1
    while max * 2 < k
      max *= 2
    end
    count += 1
    k = k - max
  end

  if count % 2 == 0
    return arr[k - 1]
  else
    return 1 - arr[k - 1]
  end

end

puts kth_grammar(30, 434991989)
