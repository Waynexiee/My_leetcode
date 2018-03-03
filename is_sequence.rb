def is_subsequence(s, t)
  size = s.size
  count = 0
  t.size.times do |i|
    if s[count] == t[i]
      count += 1
      return true if count == size
    end
  end
  false
end


puts is_subsequence('axc', 'ahbgdc')
