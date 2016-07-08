# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
    map = {}
    for i in 0...nums.length
        if map.has_key?(target - nums[i])
            return map.fetch(target - nums[i]), i
        else
            map[nums[i]] = i
        end
    end
end
