def can_construct(ransom_note, magazine)
  table = {}
  magazine.chars.each do |e|
    if table[e]
      table[e] += 1
    else
      table[e] = 1
    end
  end
  ransom_note.chars.each do |e|
    if table[e] && table[e] > 0
      table[e] -= 1
    else
      return false
    end
  end
  true
end
puts can_construct("aa", "aab")
