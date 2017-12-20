def partition(s)
  arr = []
  temp = []
  backtrack(s, 0, arr, temp)
  arr
end

def backtrack(s, l, arr, temp)
  if l >= s.length && temp.length > 0
    arr.push(temp.clone)
  end

  (l..s.length-1).each do |i|
    if s[l..i] == s[l..i].reverse
      temp.push(s[l..i])
      backtrack(s, i+1, arr, temp)
      temp.delete_at(-1)
    end
  end
end

s = "aab"
p partition(s)
