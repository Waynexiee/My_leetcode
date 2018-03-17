def repeated_substring_pattern(s)
  size = s.size
  (0..(size-1)/2).each do |i|
    if size % (i + 1) == 0
      temp = size / (i + 1)
      if s[0..i] * temp == s
        return true
      end
    end
  end
  false
end
s = "abab"
puts repeated_substring_pattern(s)
