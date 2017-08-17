def length_of_longest_substring(s)
  return nil if s.nil?
  return 0 if s == ""
  word_max = ""
  str = ''
  s.chars.each do |word|
     if str.include?(word)
       if word_max.length < str.length
          word_max = str

       end
       str = str[str.index(word)+1..-1]
       str << word
     else
        str << word
        p str
     end
  end
  word_max.length
end

puts length_of_longest_substring("vorzzhimkumepoqlgwevcycfwiovxgksxdtwlcixy")
puts length_of_longest_substring("bbbbbbbb")
puts length_of_longest_substring("pwwkew")
