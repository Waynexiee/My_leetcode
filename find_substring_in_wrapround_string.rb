def find_substring_in_wrapround_string(p)
  size = p.size
  count = {}
  max = 0
  (0..size-1).each do |i|
    if i > 0 && (p[i].ord - p[i-1].ord == 1 || p[i - 1].ord - p[i].ord == 25)
      max += 1
    else
      max = 1
    end
    if count[p[i]]
      count[p[i]] = [count[p[i]], max].max
    else
      count[p[i]] = max
    end
  end

  count.values.sum
end

p = "zb"
puts find_substring_in_wrapround_string(p)
