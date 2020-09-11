  def merge(left_arr, right_arr)
    new_array = []
    until right_arr == [] || left_arr == []
      right_arr[0] >= left_arr[0] ? new_array.push(left_arr.shift) : new_array.push(right_arr.shift)
    end
    return new_array if left_arr == [] && right_arr == []

    left_arr == [] ? new_array.push(right_arr) : new_array.push(left_arr)
    new_array.flatten
  end

  def merge_sort(array)
    if array.length <= 1
      array
    else
      mid_point = (array.length - 1) / 2
      left_arr = merge_sort(array[0..mid_point])
      right_arr = merge_sort(array[mid_point + 1..(array.length - 1)])
      merge(left_arr, right_arr)
    end
  end

  def construct_random
    arr = []
    10.times { arr.push(rand(100)) }
    arr
  end

  def array_of_arrays
    arr = []
    10.times { arr.push(construct_random) }
    arr
  end

  arr = array_of_arrays
  arr.each do |array|
    puts "Input: "
    p array
    puts "Output: "
    p merge_sort(array)
    puts ""
  end

  
    