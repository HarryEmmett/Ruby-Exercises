def bubble_sort(arr)
  iteration = 0
  while iteration != arr.length - 1
    for a in 0..arr.length - 1 do
      if a == arr.length - (iteration + 1)
        # Break either at the end of the array on the first loop 
        # or - 1 for each subsequent loop as the last index should be sorted
        break
      elsif arr[a] > arr[a + 1]
        val = arr[a]
        arr[a] = arr[a + 1]
        arr[a + 1] = val
      end
    end
    iteration += 1
  end
  arr
end

p bubble_sort([3, 2, 5, 1])
p bubble_sort([6, 8, 5, 2, 3, 4])
p bubble_sort([4, 3, 78, 2, 0, 2])
p bubble_sort([4, 3, 78, 23, 0, 211])
p bubble_sort([47, 34, 758, 26, 3, 2])
p bubble_sort([9, 8, 7, 6, 5, 4, 3, 2, 1, 0])
p bubble_sort([7, 6, 22, 8, 8, 8, 8, 0])

# def bubble_sort(arr)
#     arr.sort do |a, b|
#       a <=> b
#     end
#   end
