# @param {Integer} n
# @return {Integer[][]}
def generate_matrix(n)
    res = []
    unless n > 0; return res; end
    0.upto(n - 1) do |i|
        res[i] = []
    end
    
    # declare indices
    top = 0
    bottom = n - 1
    left = 0
    right = n - 1
    
    num = 1
    while true
        # 1. print top row
        left.upto(right) do |j|
            res[top][j] = num
            num += 1
        end
        top += 1
        if bottom < top; break; end

        # 2. print rightmost column
        top.upto(bottom) do |i|
            res[i][right] = num
            num += 1
        end
        right -= 1
        if left > right; break; end

        # 3. print bottom row
        right.downto(left) do |j|
            res[bottom][j] = num
            num += 1
        end
        bottom -= 1
        if bottom < top; break; end;

        # 4. print leftmost column
        bottom.downto(top) do |i|
            res[i][left] = num
            num += 1
        end
        left += 1
        if left > right; break; end
    end
    
    res
end
