class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

def generate_trees(n)
  return [] if n == 0
  generate_tree(1,n)
end

def generate_tree(start, endd)
  list = Array.new
  if start == endd
    list.push(TreeNode.new(start))
    return list
  end
  if start > endd
    list.push(nil)
    return list
  end

  left = Array.new
  right = Array.new
  (start..endd).each do |i|
    left = generate_tree(start, i - 1)
    right = generate_tree(i + 1, endd)
    left.each do |l|
      right.each do |r|
        root = TreeNode.new(i)
        root.left = l
        root.right = r
        list.push(root)
      end
    end
  end
  list
end

p generate_trees(2)
