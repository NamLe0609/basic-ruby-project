def bubble_sort(array_to_sort)
    sorted = false
    until sorted do
        number_shifted = false
        (array_to_sort.size - 1).times do |times|

            # If number to the right is smaller, switch their places
            if array_to_sort[times] > array_to_sort[times + 1]
                # Use of parallel assignment
                array_to_sort[times], array_to_sort[times + 1] = array_to_sort[times + 1], array_to_sort[times]
                number_shifted = true
            end
        end

        # If a number has not been shifted, consider the array sorted
        unless number_shifted
            sorted = true
        end
    end
    array_to_sort
end