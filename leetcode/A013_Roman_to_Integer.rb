# @param {String} s
# @return {Integer}
def roman_to_int(s)
    unless s
        return 0
    end
    
    map = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}
    
    helper(map, 0, s)
end

def helper(map, index, s)
    if index == s.length
        return 0
    end
    if index == s.length - 1
        return map[s[index]]
    end
    if map[s[index]] >= map[s[index + 1]]
        return map[s[index]] + helper(map, index + 1, s)
    else
        return map[s[index + 1]] - map[s[index]] + helper(map, index + 2, s)
    end
end

puts roman_to_int('DCXXI')
