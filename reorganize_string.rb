def reorganize_string(s)
  obj = {}
  size = s.size
  s.chars.each do |char|
    if obj[char]
      obj[char] += 1
    else
      obj[char] = 1
    end
  end
  return "" if obj.values.max > (size + 1) / 2
  count = 0
  ret = []
  obj = obj.sort_by {|k,v| v}.reverse
  p obj
  obj.each do |k, v|
    v.times do
      ret[count] = k
      count = (count + 2) % size
      count += 1 if ret[count]
    end
  end
  ret.join
end

s = "abbabbaaab"
p reorganize_string(s)
