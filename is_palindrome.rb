class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

def reverse_list(head)
  return head unless head
  pre = nil

  while head && head.next
    next_node = head.next
    head.next = pre
    pre = head
    head = next_node
  end

  head.next = pre
  head
end

def is_palindrome(head)
  return true if head.nil? || head.next.nil?
  head_mem = head
  count = 0
  while head
    count += 1
    head = head.next
  end

  count = (count + 1) / 2
  head_sec = head_mem
  while count > 0
    head_sec = head_sec.next
    count -= 1
  end
  puts head_sec.val,head_sec.next.val
  head_sec = reverse_list(head_sec)
  head = head_mem

  while(head && head_sec)

    return false unless head.val == head_sec.val

    head = head.next
    head_sec = head_sec.next

  end
  true
end

arr = [1,0,3,4,0,1]
head_mem = nil
head = ListNode.new(arr[0])
head_mem = head
arr[1..-1].each do |ele|
  head.next = ListNode.new(ele)
  head = head.next
end
p is_palindrome(head_mem)
