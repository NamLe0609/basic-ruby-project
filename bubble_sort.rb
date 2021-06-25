def bubble_sort(arr_to_sort)
  sorted = false
  until sorted
    number_shifted = false
    (arr_to_sort.size - 1).times do |times|
      # If number to the right is smaller, switch their places
      next unless arr_to_sort[times] > arr_to_sort[times + 1]

      # Use of parallel assignment
      arr_to_sort[times], arr_to_sort[times + 1] = arr_to_sort[times + 1], arr_to_sort[times]
      number_shifted = true
    end

    # If a number has not been shifted, consider the array sorted
    sorted = true unless number_shifted
  end
  arr_to_sort
end
