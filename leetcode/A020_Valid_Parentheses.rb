# @param {String} s
# @return {Boolean}
def is_valid(s)
    unless s; return true; end
    
    stack = []
    
    for i in 0...s.length
        c = s[i]
        if stack.length == 0
            stack.push(c)
        else
            d = stack.last
            if (c == ')' && d == '(' || c == ']' && d == '[' || c == '}' && d == '{')
                stack.pop
            else
                stack.push(c)
            end
        end
    end
    
    return stack.length == 0
                
end
