# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    if n == 1; return 1; end
    if n == 2; return 2; end
    a = 1; b = 2; c = a + b;
    
    4.upto(n) do
        a = b
        b = c
        c = a + b
    end
    
    c
end