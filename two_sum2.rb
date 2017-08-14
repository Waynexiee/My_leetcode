def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |num, idx|
      unless hash[target - num].nil?
        return [hash[target - num], idx]
      end
      hash[num] = idx
    end
end

p two_sum([3,2,4],6)
