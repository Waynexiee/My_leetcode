class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def longest_univalue_path(root)

   max = 0
   find(root, max)
   return max - 1 if max > 1
   return 0
end

def find(root,max)
  return 0 if root.nil?

  left_num = 0
  right_num = 0
  if !root.left.nil? && root.left.val == root.val
    left_num = find(root.left, max)
  end
  if !root.right.nil? && root.right.val == root.val
    right_num = find(root.right, max)
  end
  sum = right_num + left_num + 1
  max = sum if max < sum

  return (right_num > left_num ? right_num + 1 : left_num + 1)
end


root = TreeNode.new(5)
root.left = TreeNode.new(4)
root.right = TreeNode.new(5)
root.left.left = TreeNode.new(1)
root.left.right = TreeNode.new(1)
root.right.left = TreeNode.new(5)
puts longest_univalue_path(root)
