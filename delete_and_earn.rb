

def delete_and_earn(nums)
  return 0 if nums.empty?
  visited = [false] * 10001
  u_nums = nums.uniq.sort
  size = u_nums.size
  return u_nums[0] * nums.count(u_nums[0]) if size == 1
  ret = [0] * size
  ret[0] = u_nums[0] * nums.count(u_nums[0])
  ret[1] = u_nums[1] - u_nums[0] > 1 ? ret[0] + u_nums[1] * nums.count(u_nums[1]) : u_nums[1] * nums.count(u_nums[1])
  if size > 2
    ret[2] = u_nums[2] - u_nums[1] > 1 ? [ret[1], ret[0]].max + u_nums[2] * nums.count(u_nums[2]) : ret[0] + u_nums[2] * nums.count(u_nums[2])
    (3..size - 1).each do |idx|
      if u_nums[idx] - u_nums[idx - 1] > 1
        ret[idx] = [ret[idx - 1], ret[idx - 2]].max + u_nums[idx] * nums.count(u_nums[idx])
      else
        ret[idx] = [ret[idx - 2], ret[idx - 3]].max + u_nums[idx] * nums.count(u_nums[idx])
      end
    end
  end

  [ret[size-1], ret[size-2]].max
end

nums = [3, 4, 2]
# nums = [2, 2, 3, 3, 3, 4]
# nums = [1,1,1,2,4,5,5,5,6]
# nums = [3,1]
puts delete_and_earn(nums)
