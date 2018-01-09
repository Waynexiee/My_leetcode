def longest_substring(s, k)
  ret = []
  helper(s, k, ret)
  return 0 if ret.empty?
  ret.map(&:size).max
end

def helper(s, k, ret)
  return if s.empty?
  obj = {}
  stack = []
  s.chars.each do |el|
    if obj[el]
      obj[el] += 1
    else
      obj[el] = 1
    end
  end
  obj.each do |key,v|
    stack.push(key) if v < k
  end
  if stack.empty?
    ret.push(s)
    return
  end
  regex = Regexp.new(stack.join("|"))
  s.split(regex).each do |ele|
    helper(ele, k , ret) unless ele.empty?
  end
end
s = "ababbc"
k = 2
s = "aaabb"
k = 3
puts longest_substring(s, k)
