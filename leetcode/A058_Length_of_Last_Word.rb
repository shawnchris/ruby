# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    unless s && s.length > 0; return 0; end
    
    i = s.length - 1
    while i >= 0 && s[i] == ' '
        i -= 1
    end
    
    j = i
    while j >= 0 && s[j] != ' '
        j -= 1
    end
    
    return i - j
end