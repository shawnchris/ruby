# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
    result = []
    unless digits && digits.length > 0; return result; end
        
	map = ["0", "1", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
	helper(digits, "", 0, result, map);
		
	return result;
end

def helper(digits, current, level, result, map)
    if level == digits.length
        result.push(current);
        return;
    end
    c = digits[level].to_i
    for i in 0...map[c].length
        helper(digits, current + map[c][i, 1], level + 1, result, map);
    end
end
