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

# p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# p stock_picker([17, 3, 6, 9, 15, 8, 6, 70, 10])
# p stock_picker([17, 3, 6, 9, 15, 8, 6, 1000, 70])
# p stock_picker([1, 50, 6, 9, 15, 8, 6, 1, 10])
