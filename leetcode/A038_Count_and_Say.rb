# @param {Integer} n
# @return {String}
def count_and_say(n)
    unless n > 0; return ''; end;
    
    result = '1'
    (n - 1).times do
        res = ''
        i = 0; j = 0;
        while i < result.length
            j = i + 1
            while j < result.length && result[i] == result[j]
                j += 1
            end
            res += (j - i).to_s + result[i]
            i = j
        end
        result = res
    end
    
    result
end