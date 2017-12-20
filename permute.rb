def permute(nums)
  arr = []
  temp = []

  backtrace(arr, temp, nums, nums.size)
  arr
end

def backtrace(arr, temp, nums, count)
  if count == 0
    arr.push(temp)
  else
    nums.each do |num|
      if temp.include? num
        next
      end
      temp_store = temp.clone
      temp.push(num)
      backtrace(arr, temp, nums, count - 1)
      temp = temp_store
    end
  end
end

p permute([1,2,3])
