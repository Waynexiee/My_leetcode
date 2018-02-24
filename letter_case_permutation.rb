def letter_case_permutation(s)
  size = s.size
  ret = []
  helper(s, "",ret, size, 0)
  ret
end

def helper(s, temp, ret, size, pos)
  if size == pos
    ret.push(temp.dup)
    return
  end
  if letter?(s[pos])
    helper(s,temp + s[pos].upcase, ret, size, pos + 1 )
    helper(s,temp + s[pos].downcase, ret, size, pos + 1 )
  else
    helper(s,temp + s[pos], ret, size, pos + 1)
  end
end

def letter?(lookAhead)
  lookAhead =~ /[A-Za-z]/
end

s = "12345"
p letter_case_permutation(s)
