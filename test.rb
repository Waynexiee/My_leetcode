def add_two_numbers(l1, l2)
  sum = 0
  l_last = nil
  l_return = nil
  while !l1.nil? || !l2.nil?
    num1 = l1.nil? ? 0 : l1.val
    num2 = l2.nil? ? 0 : l2.val
    sum = num1 + num2 + sum / 10
    l1 = l1.next unless l1.nil?
    l2 = l2.next unless l2.nil?
    current_result = ListNode.new(sum % 10)
    l_return.next = current_result unless l_return.nil?
    l_return = current_result
    l_last = l_return if l_last.nil?
  end
  if sum / 10 == 1
    l_return.next = ListNode.new(1) unless l_return.nil?
  end
  l_last
end

class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

l1 = ListNode.new(0)

l2 = ListNode.new(0)



l3 = add_two_numbers(l1, l2)
while !l3.nil?
  puts l3.val
  l3 = l3.next
end
