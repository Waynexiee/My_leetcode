class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

def height(root)
  return root.nil? ? -1 : 1 + height(root.left)
end

def count_nodes(root)
  nodes = 0
  h = height(root)
  while root != nil
    if (height(root.right) == h - 1)
      nodes += 1 << h
      root = root.right
    else
      nodes += 1 << h-1
      root = root.left
    end
    h -= 1
  end
  nodes
end

root = TreeNode.new(0)
root.left = TreeNode.new(0)
root.right = TreeNode.new(0)
root.left.right = TreeNode.new(0)
root.left.left = TreeNode.new(0)
root.right.left = TreeNode.new(0)
p count_nodes(root)
