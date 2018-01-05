class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def max_depth(root)
  queue = []
  count = 0
  if !root.nil?
    queue.push(root)
    count = 1
  end
  while !queue.empty?
    temp = []
    while !queue.empty?
      node = queue.shift
      temp.push(node.left) unless node.left.nil?
      temp.push(node.right) unless node.right.nil?
    end
    queue = temp
    count += 1 unless queue.empty?
  end
  count
end

root =  TreeNode.new(3)
root.left = TreeNode.new(9)
root.right = TreeNode.new(20)
root.right.left = TreeNode.new(15)
root.right.right = TreeNode.new(7)
p max_depth(root)
