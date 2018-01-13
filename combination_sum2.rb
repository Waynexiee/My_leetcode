def combination_sum2(candidates, target)
  temp = []
  ret = []
  candidates.sort!
  helper(candidates, target, temp, ret, 0)
  ret.uniq
end

def helper(candidates, target, temp, ret, idx)
  if target == 0
    ret.push(temp.clone)
    return
  end
  return if candidates.size == idx
  (idx...candidates.size).each do |i|
    next if target < candidates[i]
    next if candidates[i] == candidates[i-1] && i > idx
    temp.push(candidates[i])
    helper(candidates, target - candidates[i], temp, ret, i + 1)
    temp.pop
  end
end

candidates = [10, 1, 2, 7, 6, 1, 5]
target = 8
p combination_sum2(candidates, target)
