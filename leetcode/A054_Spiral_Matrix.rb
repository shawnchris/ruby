# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
    res = []
    unless matrix && matrix.length > 0 && matrix[0].length > 0
        return res
    end
    
    # declare indices
    top = 0
    bottom = matrix.length - 1
    left = 0
    right = matrix[0].length - 1
    
    while true
        # 1. print top row
        left.upto(right) do |j|
            res.push(matrix[top][j])
        end
        top += 1
        if bottom < top; break; end

        # 2. print rightmost column
        top.upto(bottom) do |i|
            res.push(matrix[i][right])
        end
        right -= 1
        if left > right; break; end

        # 3. print bottom row
        right.downto(left) do |j|
            res.push(matrix[bottom][j])
        end
        bottom -= 1
        if bottom < top; break; end;

        # 4. print leftmost column
        bottom.downto(top) do |i|
            res.push(matrix[i][left])
        end
        left += 1
        if left > right; break; end
    end
    
    res
end

matrix = [[ 1, 2, 3 ],[ 4, 5, 6 ],[ 7, 8, 9 ]]
print spiral_order(matrix)
print "\n"

