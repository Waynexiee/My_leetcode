
def get_money_amount(n)
  table = []
  (n+1).times { table.push([]) }
  DP(table, 1, n)
end

def DP(t, s, e)
  return 0 if s >= e
  return t[s][e] unless t[s][e].nil?
  res = 2**32
  (s..e).each do |x|
    tmp = x + [DP(t, s, x-1), DP(t, x+1, e)].max
    res = [res, tmp].min
  end
  t[s][e] = res
  return res
end

puts get_money_amount(4)
