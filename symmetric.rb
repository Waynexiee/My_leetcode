class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def is_symmetric(root)
  queue = []
  queue.push(root) if !root.nil?
  while !queue.empty?
    temp = []
    level = []
    while !queue.empty?
      node = queue.shift
      if node
        level.push(node.val)
      else
        level.push(nil)
      end
      if node 
        temp.push(node.left)
        temp.push(node.right)
      end
    end
    return false if level != level.reverse
    queue = temp
  end
  true
end

root =  TreeNode.new(3)
root.left = TreeNode.new(9)
root.right = TreeNode.new(9)
root.left.left = TreeNode.new(4)
root.left.right = TreeNode.new(5)
root.right.right = TreeNode.new(5)
root.right.right = TreeNode.new(4)
root.left.right.left = TreeNode.new(8)
root.left.right.right = TreeNode.new(9)
root.right.right.left = TreeNode.new(9)
root.right.right.left = TreeNode.new(8)
p is_symmetric(root)
