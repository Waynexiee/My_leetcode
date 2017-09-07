def min_window(s, t)
  h = {}
  m_start = 0
  m_head = 0
  count = t.size
  min = 10000
  t.chars.each do |ele|
    if h[ele]
      h[ele] += 1
    else
      h[ele] = 1
    end
  end

  s.chars.each_with_index do |ele, index|

    if h[ele]
      count -= 1 if h[ele] > 0
      h[ele] -= 1
    end


    while count == 0
      if min > index - m_start + 1
        min = index - m_start + 1
        m_head = m_start
      end

      if h[s[m_start]]
        count += 1 if h[s[m_start]] == 0
        h[s[m_start]] += 1
      end
      m_start += 1
    end

  end
  puts m_head
  min == 10000 ? "" : s[m_head,min]
end

S = "ADOBECODEBANC"
T = "ABC"
p min_window(S, T)
