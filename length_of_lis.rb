def length_of_lis(nums)
  tails = [0] * nums.length
  size = 0
  nums.each do |num|
    i,j = 0,size
    while i != j
      m = (i + j) / 2
      if tails[m] < num
        i = m + 1
      else
        j = m
      end
    end

    tails[i] = num
    p tails
    size = [i+1, size].max
  end
  size
end

nums = [10, 9, 2, 5, 3, 7, 101, 5, 1, 7,8,2]
puts length_of_lis(nums)
