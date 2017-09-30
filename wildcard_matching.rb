def is_match(s, p)
  size_s = s.size
  size_p = p.size
  match = []
  (size_s+1).times do
      match << []
  end
  match[size_s][size_p] = true
  (size_p - 1).downto(0) do |i|
     if p[i] == '*'
        match[size_s][i] = true
     else
        break
     end
  end

  (size_s - 1).downto(0) do |i|
    (size_p - 1).downto(0) do |j|
      if p[j] == s[i] || p[j] == '?'
         match[i][j] = true
      elsif p[j] == '*'
         match[i][j] = match[i+1][j] || match[i][j+1]
      else
         match[i][j] = false
      end
    end
  end
  match[0][0]
end

s = "aa"
p = "a"

puts is_match(s,p)
