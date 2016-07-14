# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
    result = []
    unless nums && nums.length > 0; return result; end
    
    helper nums.sort, result, [], nums.length, 0
    
    result
end

def helper(nums, result, subset, left, start)
    result.push(Array.new(subset))
    
    if left == 0; return; end
    
    for i in start...nums.length
        subset.push(nums[i])
        helper nums, result, subset, left - 1, i + 1
        subset.pop()
    end
end