def third_max(nums)
  ret = []
  nums.uniq!
  nums.each do |e|
    if ret.size < 3
      ret.push(e)
    else
      next if ret.min >= e
      ret.sort!
      ret.shift
      ret.push(e)
    end
  end
  ret.size == 3 ? ret.min : ret.max
end


nums = [2,2,3,1]
p third_max(nums)
