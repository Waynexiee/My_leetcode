
def combination_sum(candidates, target)
  stack = []
  ret = []
  candidates.each do |e|
    if e < target
      stack.push([e])
    elsif e == target
      ret.push([e])
    end
  end
  until stack.empty?
    stack = helper(candidates, target, stack, ret)
  end
  ret
end

def helper(candidates, target, stack, ret)
  temp = []
  stack.each do |e|
    sum = e.sum
    candidates.each do |el|
      next if e[-1] > el 
      if sum + el < target
        temp.push(e+[el])
      elsif sum + el == target
        ret.push(e+[el])
      end
    end
  end
  temp
end
candidates = [2, 3, 6, 7]
target = 7
p combination_sum(candidates, target)
