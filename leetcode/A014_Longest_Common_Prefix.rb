# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    unless strs; return ''; end
    
    num_str = strs.length
    unless num_str > 0; return ''; end
    if num_str == 1; return strs[0]; end
    
    shortest = strs[0].length
    for i in 1...strs.length
        shortest = [shortest, strs[i].length].min
    end
    unless shortest > 0; return ''; end
    
    for i in 0...shortest
        c = strs[0][i]
        equal = true
        for j in 1...num_str
            if strs[j][i] != c
                equal = false
                break
            end
        end
        if !equal
            return strs[0][0...i]
        end
    end
    
    strs[0][0...shortest]
            
end
