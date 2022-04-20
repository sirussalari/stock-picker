def stock_picker(prices)
    highest_profit = 0
    best_days = []
    days = prices.length
    for price in 0...days
        for future_price in price...days
            difference = prices[future_price] - prices[price]
            if difference > highest_profit
                best_days.pop(2)
                highest_profit = difference
                best_days.push(price, future_price)
            end
        end
    end
    return best_days
end