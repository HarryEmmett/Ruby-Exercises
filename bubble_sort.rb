def bubble_sort(arr)
  index = 0
  while index != arr.length
    for a in 0..arr.length - 1 do
      if a == arr.length - 1
        break
      elsif arr[a] > arr[a + 1]
        val = arr[a]
        arr[a] = arr[a + 1]
        arr[a + 1] = val
      end
    end
    index += 1
  end
  arr
end

p bubble_sort([6, 8, 5, 2, 3, 4])
p bubble_sort([4, 3, 78, 2, 0, 2])
p bubble_sort([4, 3, 78, 23, 0, 211])
p bubble_sort([47, 34, 758, 26, 3, 2])
p bubble_sort([9,8,7,6,5,4,3,2,1,0])

# def bubble_sort(arr)
#     arr.sort do |a, b|
#       a <=> b
#     end
#   end
