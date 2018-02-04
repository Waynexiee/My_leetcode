def rob(nums)
  a,b = 0,0
  max = 0
  nums[0..-2].each_with_index do |num, idx|
    if idx.odd?
      a = [a+num,b].max
    else
      b = [b+num,a].max
    end
  end
  max = [a,b].max
  a,b = 0,0
  nums[1..-1].each_with_index do |num, idx|
    if idx.odd?
      a = [a+num,b].max
    else
      b = [b+num,a].max
    end
  end
  [a,b,max].max
end
