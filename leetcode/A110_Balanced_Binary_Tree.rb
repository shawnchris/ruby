# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
    unless root; return true; end
    helper(root) != -1
end

def helper(root)
    unless root; return 0; end
    left = helper(root.left)
    right = helper(root.right)
    if left == -1 || right == -1 || (left - right).abs > 1
        return -1
    else
        return [left, right].max + 1
    end
end