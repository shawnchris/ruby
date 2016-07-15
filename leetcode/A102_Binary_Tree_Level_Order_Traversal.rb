# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
    result = []
    unless root; return result; end
    
    queue = []
    queue.push(root)
    
    while (queue.length > 0)
        res = []
        size = queue.size
        size.times do
            node = queue.shift
            res.push(node.val)
            if node.left
                queue.push(node.left)
            end
            if node.right
                queue.push(node.right)
            end
        end
        result.push(res)
    end
    
    result
end