def is_palindrome(s)
  s.gsub!(/\W+/, '')
  return true if s.empty? || s.nil?
  puts s
  return true if s.downcase.reverse == s.downcase
  return false
end

s = "A man, a plan, a canal: Panama"
puts is_palindrome(s)
s = "A man, a plan, a canal -- Panama"
puts is_palindrome(s)
