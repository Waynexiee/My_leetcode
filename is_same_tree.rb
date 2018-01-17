class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

def is_same_tree(p, q)
  return true if p.nil? && q.nil?
  return false if p.nil? || q.nil?
  if p.val != q.val
    return false
  end
  if p
    return false unless is_same_tree(p.left, q.left)
    return false unless is_same_tree(p.right, q.right)
  end
  return true
end

root = TreeNode.new(0)
root.left = TreeNode.new(1)
root.right = TreeNode.new(2)
root.left.right = TreeNode.new(1)
root.left.left = TreeNode.new(4)
root.right.left = TreeNode.new(5)

root1 = TreeNode.new(0)
root1.left = TreeNode.new(1)
root1.right = TreeNode.new(2)
root1.left.right = TreeNode.new(3)
root1.left.left = TreeNode.new(4)
root1.right.left = TreeNode.new(5)
p is_same_tree(root, root1)
