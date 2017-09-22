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
    if l1.val < l2.val
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
  head_mem.next
end

def merge_k_lists(lists)
  return nil if lists.empty?
  if lists.size > 300
     arr = []
     head = ListNode.new(0)
     head_mem = head
     lists.each do |list|
         arr << list.val
     end
     arr.sort!
     while !arr.empty?
       head.next =  ListNode.new(arr.shift)
       head = head.next
     end
     return head_mem.next
  end
  lists.inject(nil) { |product, n| merge_two_lists(product, n) }
end


head = ListNode.new(1)
head_mem = head
2.times do |i|
  head.next = ListNode.new(i+2)
  head = head.next
end
head1 = ListNode.new(1)
head_mem1 = head1
3.times do |i|
  head1.next = ListNode.new(i+2)
  head1 = head1.next
end

arr = [[]]
ret = merge_k_lists(arr)
p ret
