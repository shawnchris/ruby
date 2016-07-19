# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    unless prices && prices.length > 0; return 0; end
    lowest = prices[0]
    max_profit = 0
    for i in 1...prices.length
        max_profit = [max_profit, prices[i] - lowest].max
        lowest = [lowest, prices[i]].min
    end
    
    max_profit
end