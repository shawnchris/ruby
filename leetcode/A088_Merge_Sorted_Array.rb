# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    a = m - 1
    b = n - 1
    c = m + n - 1
    
    while a >= 0 && b >= 0
        if nums1[a] < nums2[b]
            nums1[c] = nums2[b]
            b -= 1
        else
            nums1[c] = nums1[a]
            a -= 1
        end
        c -= 1
    end
    
    while b >= 0
        nums1[c] = nums2[b]
        b -= 1
        c -= 1
    end
    
end