class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

def reverse_list(head)
  stack = []
  head_ret = nil
  head_result = nil
  while head
    stack << head
    head = head.next
  end
  until stack.empty?
    if head_ret.nil?
      head_ret = stack.pop
      head_result = head_ret
    else
      head_ret.next = stack.pop
      head_ret = head_ret.next
    end
  end
  head_ret.next = nil
  head_result
end

head = ListNode.new(1)
head.next = ListNode.new(2)

p reverse_list(head)
