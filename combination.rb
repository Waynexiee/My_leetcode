def combine(n, k)
  ret = []
  temp = []

  nums = (1..n).to_a
  helper(nums, k, temp, ret)
  ret
end

def helper(nums, size, temp, ret)
  if size == 0
    ret.push(temp)
    return
  end


  nums.each_with_index do |e, i|
    next if !temp.empty? && temp[-1] > e 
    temp.push(e)
    nums_copy = nums.dup
    nums_copy.delete_at(i)
    helper(nums_copy, size-1, temp.clone, ret)
    temp.pop
  end
end

p combine(4,2)
