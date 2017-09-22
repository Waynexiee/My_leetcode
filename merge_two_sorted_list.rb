class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

def merge_two_lists(l1, l2)
  head = ListNode.new(0)
  head_mem = head
  while(l1 && l2)
    if l1.val > l2.val
      head.next = l1
      head = head.next
      l1 = l1.next
    else
      head.next = l2
      head = head.next
      l2 = l2.next
    end
  end
  head.next = l1 if l1
  head.next = l2 if l2
  head_mem
end

ListNode.new()
