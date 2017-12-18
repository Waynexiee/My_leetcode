def word_break(s, word_dict)
  length = s.length
  a = [false] * (length + 1)
  a[0] = true
  (1..length).each do |i|
    i.times do |j|
      if (a[j] && word_dict.include?(s[j..i-1]))
        a[i] = true
      end
    end
  end
  a[length]
end


s = "acaaaaabbbdbcccdcdaadcdccacbcccabbbbcdaaaaaadb"
word_dict = ["abbcbda","cbdaaa","b","dadaaad","dccbbbc","dccadd","ccbdbc","bbca","bacbcdd","a","bacb","cbc","adc","c","cbdbcad","cdbab","db","abbcdbd","bcb","bbdab","aa","bcadb","bacbcb","ca","dbdabdb","ccd","acbb","bdc","acbccd","d","cccdcda","dcbd","cbccacd","ac","cca","aaddc","dccac","ccdc","bbbbcda","ba","adbcadb","dca","abd","bdbb","ddadbad","badb","ab","aaaaa","acba","abbb"]

puts word_break(s, word_dict)
