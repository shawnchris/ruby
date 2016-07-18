# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def min_depth(root)
    result = 0
    unless root; return result; end
    
    queue = []
    queue.push(root)
    
    while queue.length > 0
        result += 1
        size = queue.length
        size.times do
            node = queue.shift
            if !node.left && !node.right
                return result
            end
            if node.left
                queue.push(node.left)
            end
            if node.right
                queue.push(node.right)
            end
        end
    end
    
end