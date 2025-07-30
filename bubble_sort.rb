def bubble_sort(unsorted_array)
  to_sort_arr = unsorted_array.map(&:itself)
  sorted_arr = []
  while to_sort_arr.length > 0
    to_sort_arr.each_with_index do |val, index|
      if index >= to_sort_arr.length - 1
        next   
      end
      if val > to_sort_arr[index + 1]
        temporary_value = val;
        to_sort_arr[index] = to_sort_arr[index + 1]
        to_sort_arr[index + 1] = temporary_value
      end
    end
    sorted_arr.unshift(to_sort_arr[-1])
    to_sort_arr.pop
  end
  sorted_arr
end

p bubble_sort([4,3,78,2,0,2])