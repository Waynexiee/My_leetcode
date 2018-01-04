def largest_number(nums)
  ret = ""

  nums.map!{|x| x.to_s}.sort! { |x,y| y + x <=> x + y}
  nums.each do |num|
    ret += num
  end
  while ret[0] == '0' && ret.size > 1
    ret = ret[1..-1]
  end
  ret
end

nums = [0,0]
puts largest_number(nums)
