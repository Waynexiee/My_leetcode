def count_and_say(n)
  s = "1"
  (n-1).times { s = build(s) }
  s
end

def build(s)
  ret=""
  size = s.size
  pointer = 0
  while pointer < size
    val = s[pointer]
    count = 1
    pointer += 1
    while pointer < size && s[pointer] == val
      count += 1
      pointer += 1
    end
    ret << count.to_s << val
  end
  ret
end

puts count_and_say(3)
puts count_and_say(4)
puts count_and_say(5)
puts count_and_say(6)
