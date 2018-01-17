class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

def sorted_list_to_bst(head)
  arr = []
  while head
    arr.push(head.val)
    head = head.next
  end
  size = arr.size
  middle = (0 + size - 1) / 2
  root = TreeNode.new(arr[middle])
  build_tree(root, 0, middle - 1, middle + 1, size - 1, arr)
  root
end

def build_tree(node, l1, r1, l2, r2, arr)
  if l1 <= r1
    middle = (l1 + r1) / 2
    node.left = TreeNode.new(arr[middle])
    build_tree(node.left, l1, middle - 1, middle + 1, r1, arr)
  end
  if l2 <= r2
    middle = (l2 + r2) / 2
    node.right = TreeNode.new(arr[middle])
    build_tree(node.right, l2, middle - 1, middle + 1, r2, arr)
  end
end

first = ListNode.new(1)
first.next = ListNode.new(2)
first.next.next = ListNode.new(3)
first.next.next.next = ListNode.new(4)
first.next.next.next.next = ListNode.new(5)
p sorted_list_to_bst(first)
