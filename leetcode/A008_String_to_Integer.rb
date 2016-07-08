# @param {String} str
# @return {Integer}
def my_atoi(str)
    result = 0
    str.strip!
    if str.length == 0
        return result
    end
    
    unless str[0] == '+' || str[0] == '-' || ('0'..'9').include?(str[0])
        return result
    end
    
    negative = false
    if str[0] == '-'
        negative = true
    elsif str[0] == '+'
        # do nothing
    else
        result = Integer(str[0])
    end
    
    for i in 1...str.length
        unless ('0'..'9').include?(str[i])
            break
        end
        result = result * 10 + Integer(str[i])
    end
    
    if negative
        result = -result
    end
    
    if result > 2147483647
        return 2147483647
    end
    
    if result < -2147483648
        return -2147483648
    end
    
    result
end
