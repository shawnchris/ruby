# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    result = []
    unless num_rows > 0; return result; end
    
    num_rows.times do |i|
        level = []
        (i + 1).times do |j|
            if j == 0 || j == i
                level[j] = 1
            else
                level[j] = result[i - 1][j - 1] + result[i - 1][j]
            end
        end
        result.push(level)
    end
    
    result
end