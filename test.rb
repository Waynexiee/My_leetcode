class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def is_valid_bst(root)
  nums = []
  traverse(root, nums)
  size = nums.size - 1
  size.times do |i|
    return false if nums[i] > nums[i+1]
  end
  true 
end

def traverse(root, nums)
  return if root.nil?
  traverse(root.left, nums)
  nums << root.val
  traverse(root.right, nums)
end

root =  TreeNode.new(2)
root.left = TreeNode.new(3)
root.right = TreeNode.new(3)
root.left.left = TreeNode.new(4)
root.left.right = TreeNode.new(5)
root.right.right = TreeNode.new(5)
root.right.right = TreeNode.new(4)
root.left.right.left = TreeNode.new(8)
root.left.right.right = TreeNode.new(9)
root.right.right.left = TreeNode.new(9)
root.right.right.left = TreeNode.new(8)
p is_valid_bst(root)
