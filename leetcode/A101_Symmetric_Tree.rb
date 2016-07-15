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
def is_symmetric(root)
    unless root; return true; end
    helper(root.left, root.right)
end

def helper(p, q)
    if !p && !q; return true; end
    if !p || !q; return false; end
    if p.val != q.val; return false; end
    
    helper(p.left, q.right) && helper(p.right, q.left)
end