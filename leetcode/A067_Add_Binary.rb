# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
    unless a && a.length > 0; return b; end
    unless b && b.length > 0; return a; end
    
    i = a.length - 1; j = b.length - 1; k = 0;
    result = ''
    while i >= 0 || j >= 0 || k > 0
        aa = 0; bb = 0;
        if i >= 0; aa = a[i].to_i; end
        if j >= 0; bb = b[j].to_i; end
        result = (aa ^ bb ^ k).to_s + result
        k = (aa + bb + k) > 1 ? 1 : 0
        i -= 1; j -= 1
    end
    
    result
end