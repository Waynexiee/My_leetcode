def group_anagrams(strs)
  h = {}
  strs.each do |ele|
    arr = ele.chars.sort
    if h[arr]
      h[arr] << ele
    else
      h[arr] = [ele]
    end
  end
  h.values.to_a
end

strs = ["eat", "tea", "tan", "ate", "nat", "bat"]
p group_anagrams(strs)
