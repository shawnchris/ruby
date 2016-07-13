# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    unless haystack && needle; return -1; end
    if needle.length == 0; return 0; end
    
    for i in 0..haystack.length - needle.length
        if haystack[i] != needle[0]; next; end
        flag = true;
        for j in 0...needle.length
            if haystack[i + j] != needle[j]
                flag = false
                break
            end
        end
        if flag; return i; end
    end
    
    return -1
end
