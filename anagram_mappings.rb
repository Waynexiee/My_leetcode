def anagram_mappings(a, b)
  ret = []
  a.each do |ele|
    temp = b.index(ele)
    ret.push(temp)
    b[temp] = -1
  end
end
