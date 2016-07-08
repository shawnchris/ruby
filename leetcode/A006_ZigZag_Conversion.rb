# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    if num_rows <= 1
        return s
    end
    
    sa = []
    for i in 0...num_rows
        sa[i] = ''
    end
    
    j = 0
    d = 1
    for i in 0...s.length
        sa[j] += s[i]
        j += d
        if j == num_rows
            j -= 2
            d = -1
        end
        if j < 0
            j += 2
            d = 1
        end
    end
    
    result = ''
    for i in 0...num_rows
        result += sa[i]
    end
    
    result
end
