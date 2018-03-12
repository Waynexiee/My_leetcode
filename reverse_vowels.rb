def reverse_vowels(s)
  store = []
  table = "aeiou"
  s.split('').each do |e|
    if table.include?(e)
      store.push(e)
    end
  end
  size = s.size
  (0..size - 1).each do |i|
    if table.include?(s[i])
      s[i] = store.pop
    end
  end
  s
end


s = "leetcode"
puts reverse_vowels(s)
