def first_uniq_char(s)
  obj = {}
  s.chars do |i|
    if obj[i]
      obj[i] += 1
    else
      obj[i] = 1
    end
  end
  obj.each do |key, value|
    return s.index(key) if value == 1
  end
  -1
end

puts first_uniq_char("dddccdbba")
