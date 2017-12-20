class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

def zigzag_level_order(root)
  return [] if root.nil?
  stack = []
  stack2 = []
  arr = []
  stackNum = [root.val]
  stack2.push(root)
  while !stack2.empty?
    stack = stack2
    stack2 = []
    unless stackNum.empty?
      stackNum.reverse! if arr.size.odd?
      arr.push(stackNum)

    end
    stackNum = []
    while !stack.empty?
      temp = stack.shift
      unless temp.left.nil?
        stack2.push(temp.left)
        stackNum.push(temp.left.val)
      end
      unless temp.right.nil?
        stack2.push(temp.right)
        stackNum.push(temp.right.val)
      end
    end
  end
  arr
end


root = TreeNode.new(3)
root.left = TreeNode.new(9)
root.right = TreeNode.new(20)
root.left.left = TreeNode.new(4)
root.left.right = TreeNode.new(5)
root.right.left = TreeNode.new(15)
root.right.right = TreeNode.new(7)
p zigzag_level_order(root)
