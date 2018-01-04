class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def level_order(root)
  queue = []
  ret = []
  queue.push(root) if !root.nil?
  while !queue.empty?
    temp = []
    level = []
    while !queue.empty?
      node = queue.shift
      level.push(node.val)
      temp.push(node.left) unless node.left.nil?
      temp.push(node.right) unless node.right.nil?
    end
    ret.push(level)
    queue = temp
  end
  ret
end

root =  TreeNode.new(3)
root.left = TreeNode.new(9)
root.right = TreeNode.new(20)
root.right.left = TreeNode.new(15)
root.right.right = TreeNode.new(7)
p level_order(root)
