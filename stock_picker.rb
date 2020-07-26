require 'pry'

def stock_picker(prices)
  result = Hash.new(0)

  for i in 0..prices.length-2
    price = prices[i]
    future_prices = prices.slice(i+1, prices.length)

    for k in 0..future_prices.length-1
      next_price = future_prices[k]
      value = next_price - price
      key = [i, k+i+1]

      result[key] = value
    end
  end

  return result.max_by { |k, v| v }[0]
end

prices = [17,3,6,9,15,8,6,1,10]

stock_picker(prices)