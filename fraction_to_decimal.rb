def fraction_to_decimal(numerator, denominator)
  h = {}
  mark = 1
  if numerator < 0
    mark *= -1
    numerator = -numerator
  end

  if denominator < 0
    mark *= -1
    denominator = -denominator
  end
  mark = (mark == -1 ? '-' : '')
  div,rem = numerator.divmod(denominator)

  return (mark + div.to_s) if rem == 0
  count = 0
  res = ""
  while rem != 0
    if h[rem]
      res.insert(h[rem],'(')
      res.insert(-1,')')
      break
    else

      h[rem] = count
    end
    res << (rem * 10 / denominator).to_s
    rem = rem * 10 % denominator
    count += 1
  end

  mark + [div.to_s,res].join('.')
end

puts fraction_to_decimal(1,2)
puts fraction_to_decimal(2,1)
puts fraction_to_decimal(2,3)
puts fraction_to_decimal(1,333)
puts fraction_to_decimal(-50,8)
puts fraction_to_decimal(-2147483648,1)
