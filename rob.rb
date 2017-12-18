def rob(nums)
  a,b = 0,0
  nums.each_with_index do |num, idx|
    if idx.odd?
      a = [a+num,b].max
    else
      b = [b+num,a].max
    end
  end
  [a,b].max
end
