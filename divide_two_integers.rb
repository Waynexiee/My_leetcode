MAX_INT = (2**31 -1)
MIN_INT = -(2**31)
def divide(dividend, divisor)
  if divisor == 0 || (dividend == MIN_INT && divisor == -1)
    return MAX_INT
  end
  return 0 if dividend == 0
  mark = 0
  dividend_mem = dividend
  result = 0
  if (dividend > 0 && divisor < 0) || (dividend < 0 && divisor > 0)
    mark = 1
    divisor = divisor.abs
    dividend = dividend.abs
  end

  while(dividend >= divisor)
    measure = divisor
    quo = 1
    while measure <= dividend
      measure = measure << 1
      quo = quo << 1
    end
    dividend -= (measure >> 1)
    result += (measure == divisor ? quo : quo >> 1)
  end
  mark == 1 ? -result : result
end
puts divide(23456763, -1)
