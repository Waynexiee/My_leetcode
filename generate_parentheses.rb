def generate_parenthesis(n)
  ret = []
  backtrack(ret,"",0,n)
  ret
end

def backtrack(ret, str, count, n)
  if str.size == n*2 && count == 0
    ret << str
  end

  if str.size < n*2
    backtrack(ret, str+"(", count + 1, n)
    if count > 0
      backtrack(ret, str+")", count - 1, n)
    end
  end
end

p generate_parenthesis(3)
