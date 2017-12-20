class MinStack

=begin
    initialize your data structure here.
=end
    def initialize()
      @arr = []
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      @arr.push(x)
    end


=begin
    :rtype: Void
=end
    def pop()
      @arr.pop
    end


=begin
    :rtype: Integer
=end
    def top()
      @arr[-1]
    end


=begin
    :rtype: Integer
=end
    def get_min()
      @arr.min
    end


end

# Your MinStack object will be instantiated and called as such:
obj = MinStack.new()
obj.push(1)
obj.push(2)
obj.pop()
param_3 = obj.top()
param_4 = obj.get_min()

puts param_3,param_4
