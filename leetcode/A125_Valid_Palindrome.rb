# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    unless s && s.length > 1; return true; end
    i = 0; j = s.length - 1
    while i < j
        unless letter_or_digit?(s[i]); i += 1; next; end
        unless letter_or_digit?(s[j]); j -= 1; next; end
        unless s[i].upcase == s[j].upcase; return false; end
        i += 1; j -= 1
    end
    return true
end

def letter?(lookAhead)
  lookAhead =~ /[[:alpha:]]/
end

def numeric?(lookAhead)
  lookAhead =~ /[[:digit:]]/
end

def letter_or_digit?(s)
  s =~ /[[:alpha:]]/ || s =~ /[[:digit:]]/
end