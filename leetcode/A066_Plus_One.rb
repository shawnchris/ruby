# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    (digits.length - 1).downto(0) do |i|
        if digits[i] == 9
            digits[i] = 0
        else
            digits[i] += 1
            return digits
        end
    end
    digits.unshift(1)
    
    digits
end