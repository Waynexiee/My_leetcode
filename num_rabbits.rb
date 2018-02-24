def num_rabbits(answers)
  h = {}
  ret = 0
  answers.each do |e|
    if h[e]
      h[e] += 1
    else
      h[e] = 1
    end
  end

  h.each do |k, v|
    puts ret
    if k == 0
      ret += v
      next
    end
    div = v % (k + 1)
    if div > 0
      ret += (v / (k + 1) + 1) * (k + 1)
    else
      ret += v
    end
  end
  ret
end
answers = [0,1,0,2,0,1,0,2,1,1]
puts num_rabbits(answers)
