def num_tilings(n)
  ret = [0]
  sum = 0
  temp = 0
  s = [1,2]
  (1..n).each do |i|
    if i <= 2
      temp = 1
    else
      temp = 2
    end
    s[i] = helper(i, s)
  end
  p s
  s[-1] % 1000000007 
end

def helper(n, s)
  return 1 if n == 1
  return 2 if n == 2
  return 5 if n == 3
  sum = 0
  (1..n-1).each do |i|
    if i <= 2
      temp = 1
    else
      temp = 2
    end
    sum += s[n-i] * temp
  end
  sum + 2
end


puts num_tilings(30)
