def stock_picker(stock_prices)
  largest_profit = 0
  best_outcome = "don't buy any stock!"

  # Iterate through all stock prices
  stock_prices.each_with_index do |stock_original_price, day_bought|
    # Run code unless the day_bought is the last day
    next if day_bought == stock_prices.length

    # For every prices after the picked price, compare it to original
    stock_prices[(day_bought + 1)..-1].each_with_index do |stock_new_price, days_holding|
      forecast_revenue = stock_new_price - stock_original_price

      # If the (positive) difference in price is bigger, set the best outcome to be those two days
      next unless forecast_revenue > largest_profit

      largest_profit = forecast_revenue

      # The best day to sell has to add 1 as days_holding starts at 0
      best_outcome = [day_bought, day_bought + days_holding + 1]
    end
  end
  best_outcome
end
