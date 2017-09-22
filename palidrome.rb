def valid_palindrome(s)
  size = s.size
  right = size - 1
  left = 0
  mark = 0
  mark_find = 0
  return true if s == s.reverse
  loop do
    if s[left] == s[right]
      left += 1
      right -= 1
    else
      return false if mark == 1
      if s[left] == s[right - 1] && s[left + 1] != s[right]
        right -= 1
        mark = 1
      elsif s[left] != s[right - 1] && s[left + 1] == s[right]
        left += 1
        mark = 1
      elsif s[left] == s[right - 1] && s[left + 1] == s[right]
        string = s[left..right-1]
        return true if string == string.reverse
        string = s[left+1..right]
        return true if string == string.reverse
        return false
      else
        return false
      end
    end
    return true if left >= right || mark_find == 1
  end
end
s = "ebcbbececabbacecbbcbe"
puts valid_palindrome(s)
