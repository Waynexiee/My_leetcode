def title_to_number(s)
  result = 0
  size = s.size - 1
  size.downto(0) do |i|
    result += (s[i].ord - 64) * (26 ** (size - i))
  end
  result
end
puts title_to_number("BA")
