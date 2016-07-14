# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
    if !p && !q; return true; end
    if !p || !q; return false; end
    if p.val != q.val; return false; end
    
    is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
end