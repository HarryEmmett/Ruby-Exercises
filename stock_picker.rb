def stock_picker(arr)
  result = 0
  buy_and_sell = []
  arr.each_with_index do |a, indexA|
    arr[indexA..-1].each_with_index do |b, indexB|
      next unless b - a > result
    
      buy_and_sell = [indexA, indexB + indexA]
      result = b - a
    end
  end
  buy_and_sell
end

# Find biggest difference for profit in sell stock. Must buy first
# Assuming the left value is the "buy" prices and values after this are the "sell" prices

# p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])        -> [1, 4]
# p stock_picker([17, 3, 6, 9, 15, 8, 6, 70, 10])       -> [1, 7]
# p stock_picker([17, 3, 6, 9, 15, 8, 6, 1000, 70])     -> [1, 7]
# p stock_picker([1, 50, 6, 9, 15, 8, 6, 1, 10])        -> [0, 1]
