# @param {Integer} x
# @return {Integer}
def reverse(x)
    if x == 0
        return x
    end
    negative = false
    if x < 0
        negative = true
        x = -x
    end
    
    y = 0
    while x > 0
        y = y * 10 + x % 10
        x = x / 10
    end
    
    if negative
        y = -y
    end
    
    if y > 2147483647 || y < -2147483648
        return 0
    end
    
    y
end
