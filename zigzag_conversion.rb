def convert(s, num_rows)
    return s if num_rows == 1
    h = {}
    length = s.length
    count = 1
    mark = 0
    s_final = ''
    length.times do |i|
      if h[count]
        h[count] << s[i]
      else
        h[count] = [s[i]]
      end

      if count == 1
        mark = 0
      elsif count == num_rows
        mark = 1
      end
      mark == 0 ? count += 1 : count -= 1
    end

    num_rows.times do |i|
      s_final << h[i+1].join if !h[i+1].nil?
    end
    s_final
end
puts convert("PAYPALISHIRING", 3)
