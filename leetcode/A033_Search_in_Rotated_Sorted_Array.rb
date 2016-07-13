# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    unless nums && nums.length > 0; return -1; end
    
    s = 0; e = nums.length - 1
    while s + 1 < e
        m = s + (e - s) / 2
        if nums[s] < nums[m] #Left part sorted
            if nums[s] <= target && target <= nums[m]
                e = m
            else
                s = m
            end
        else #Right part sorted
            if nums[m] <= target && target <= nums[e]
                s = m
            else
                e = m
            end
        end
    end
    
    if nums[s] == target
        return s
    elsif nums[e] == target
        return e
    else
        return -1
    end
end
