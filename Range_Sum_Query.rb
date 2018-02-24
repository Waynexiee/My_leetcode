class NumArray

=begin
  :type nums: Integer[]
=end
  def initialize(nums)
    @nums = nums
    @size = nums.size
    @sums = []
    nums.each_with_index do |e, idx|
      if idx == 0
        @sums.push(e)
      else
        @sums.push(e + @sums[idx-1])
      end
    end
  end
=begin
  :type i: Integer
  :type j: Integer
  :rtype: Integer
=end
  def sum_range(i, j)
    j = @size - 1 if j > @size - 1
    i = 0 if i < 0
    @sums[j] - @sums[i] + @nums[i]
  end
end


nums = [-2, 0, 3, -5, 2, -1]
obj = NumArray.new(nums)

p obj.sum_range(0, 2)
p obj.sum_range(2, 5)
p obj.sum_range(0, 5)
