# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    if x < 0
        return false
    end
    s = String(x)
    i = 0
    j = s.length - 1
    while i < j
        if s[i] != s[j]
            return false
        end
        i += 1
        j -= 1
    end
    return true
end
