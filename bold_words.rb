def bold_words(words, s)
  record = [false] * s.size
  ret = ""
  words.each do |ele|
    ss = s.clone
    loop do
      index = ss.index(ele)
      break unless index
      ss[index] = 'A'
      (index..index + ele.size - 1).each do |i|
        record[i] = true
      end
    end
  end
  count = 0
  while count < s.size
    if record[count]
      ret = ret + "<b>" + s[count]
      count += 1
      while record[count] &&  count < s.size
        ret = ret + s[count]
        count += 1
      end
      return ret + "</b>" if count == s.size
      ret = ret + "</b>" + s[count]
    else
      ret = ret + s[count]
    end
    count += 1
  end
  ret
end
words = ["ab", "bcd"]
s = "aabcd"
puts bold_words(words,s)

words = ["ccb","b","d","cba","dc"]
s = "eeaadadadc"

puts bold_words(words,s)
