class MedianFinder

=begin
    initialize your data structure here.
=end
    def initialize()
      @arr = []
    end


=begin
    :type num: Integer
    :rtype: Void
=end
    def add_num(num)
      @arr.push(num)
      size = @arr.size
      (size - 1).downto(1) do |i|
         if @arr[i] < @arr[i-1]
           @arr[i], @arr[i-1] = @arr[i-1], @arr[i]
         else
           break
         end
      end
    end


=begin
    :rtype: Float
=end
    def find_median()
      return 0 if @arr.empty?
      size = @arr.size
      if size.odd?
        return @arr[size/2]
      else
        return (@arr[size/2] + @arr[size/2-1])*1.0/2
      end
    end


end


obj = MedianFinder.new()
obj.add_num(1)
obj.add_num(2)
puts obj.find_median()
obj.add_num(3)
puts obj.find_median()
