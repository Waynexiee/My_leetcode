def two_sum(nums, target)
    arr = []

    nums.each do |num|
        if nums.include?(target - num)

            if target == num * 2
                arr_select = nums.each_index.select { |i| nums[i] == num }
                if arr_select.size > 1
                  arr << arr_select[0]
                  arr << arr_select[1]
                  break
                end
            elsif target != num * 2
                arr << nums.index(num)
                arr << nums.index(target - num)
                break
            end
        end
    end
    arr
end


p two_sum([3,2,4],6)
