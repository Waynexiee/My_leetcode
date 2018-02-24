class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def min_diff_in_bst(root)
  ret = [2**32]
  pre = [nil]
  b_search(root, ret, pre)
  ret[0]
end

def b_search(node, ret, pre)
  b_search(node.left, ret, pre) unless node.left.nil?
  if !pre[0].nil? && node.val - pre[0] < ret[0]
    ret[0] = node.val - pre[0]
  end
  pre[0] = node.val
  b_search(node.right, ret, pre) unless node.right.nil?
end

root = TreeNode.new(4)
root.left = TreeNode.new(2)
root.right = TreeNode.new(6)
root.left.left = TreeNode.new(1)
root.left.right = TreeNode.new(3)

puts min_diff_in_bst(root)
