def restore_ip_addresses(s)
  ret = []
  temp = []
  size = s.size
  helper(s, 0, temp, ret, size)
  ret
end

def helper(s, idx, temp, ret, size)
  return if temp.size > 4 || idx > size
  if idx == size && temp.size == 4
    ret.push(temp.join("."))
    return
  end

  temp.push(s[idx+0])
  helper(s, idx+1, temp, ret, size)
  temp.pop

  return unless idx + 1 < size
  if s[idx..idx+1].to_i > 9 && s[idx..idx+1].to_i < 100
    temp.push(s[idx..idx+1])
    helper(s, idx+2, temp, ret, size)
    temp.pop
  end


  return unless idx + 2 < size
  if s[idx..idx+2].to_i < 256 && s[idx..idx+2].to_i > 99
    temp.push(s[idx..idx+2])
    helper(s, idx+3, temp, ret, size)
    temp.pop
  end

end

s = "010010"
p restore_ip_addresses(s)
