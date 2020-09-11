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
  count = 0
  arr.each do |array|
    puts 'Input: '
    p array
    puts 'Output (merge sorted): '
    merged = p merge_sort(array)
    puts "Sorted With Built In \"sort\" method: "
    sorted = p array.sort
    puts 'Are arrays equal?'
    merged == sorted ? (puts 'True'; count += 1) : (puts 'False')
    puts ""
  end
  puts ""
  puts "#{count} out of #{arr.length} arrays were succesfully sorted"

=begin 

Example Output

Input: 
[94, 81, 12, 47, 82, 59, 13, 51, 81, 19]
Output (merge sorted): 
[12, 13, 19, 47, 51, 59, 81, 81, 82, 94]
Sorted With Built In "sort" method: 
[12, 13, 19, 47, 51, 59, 81, 81, 82, 94]
Are arrays equal?
True

Input: 
[0, 9, 16, 32, 1, 96, 24, 4, 59, 23]
Output (merge sorted): 
[0, 1, 4, 9, 16, 23, 24, 32, 59, 96]
Sorted With Built In "sort" method: 
[0, 1, 4, 9, 16, 23, 24, 32, 59, 96]
Are arrays equal?
True

Input: 
[2, 94, 68, 44, 53, 34, 81, 98, 23, 91]
Output (merge sorted): 
[2, 23, 34, 44, 53, 68, 81, 91, 94, 98]
Sorted With Built In "sort" method: 
[2, 23, 34, 44, 53, 68, 81, 91, 94, 98]
Are arrays equal?
True

Input: 
[7, 35, 46, 23, 50, 17, 66, 99, 15, 96]
Output (merge sorted): 
[7, 15, 17, 23, 35, 46, 50, 66, 96, 99]
Sorted With Built In "sort" method: 
[7, 15, 17, 23, 35, 46, 50, 66, 96, 99]
Are arrays equal?
True

Input: 
[62, 31, 8, 15, 52, 52, 82, 86, 1, 48]
Output (merge sorted): 
[1, 8, 15, 31, 48, 52, 52, 62, 82, 86]
Sorted With Built In "sort" method: 
[1, 8, 15, 31, 48, 52, 52, 62, 82, 86]
Are arrays equal?
True

Input: 
[82, 9, 16, 1, 68, 10, 47, 0, 58, 93]
Output (merge sorted): 
[0, 1, 9, 10, 16, 47, 58, 68, 82, 93]
Sorted With Built In "sort" method: 
[0, 1, 9, 10, 16, 47, 58, 68, 82, 93]
Are arrays equal?
True

Input: 
[12, 43, 94, 28, 64, 37, 49, 92, 12, 19]
Output (merge sorted): 
[12, 12, 19, 28, 37, 43, 49, 64, 92, 94]
Sorted With Built In "sort" method: 
[12, 12, 19, 28, 37, 43, 49, 64, 92, 94]
Are arrays equal?
True

Input: 
[41, 2, 66, 80, 71, 43, 83, 94, 88, 29]
Output (merge sorted): 
[2, 29, 41, 43, 66, 71, 80, 83, 88, 94]
Sorted With Built In "sort" method: 
[2, 29, 41, 43, 66, 71, 80, 83, 88, 94]
Are arrays equal?
True

Input: 
[61, 68, 17, 99, 23, 67, 5, 44, 55, 91]
Output (merge sorted): 
[5, 17, 23, 44, 55, 61, 67, 68, 91, 99]
Sorted With Built In "sort" method: 
[5, 17, 23, 44, 55, 61, 67, 68, 91, 99]
Are arrays equal?
True

Input: 
[69, 40, 82, 85, 82, 42, 40, 42, 91, 5]
Output (merge sorted): 
[5, 40, 40, 42, 42, 69, 82, 82, 85, 91]
Sorted With Built In "sort" method: 
[5, 40, 40, 42, 42, 69, 82, 82, 85, 91]
Are arrays equal?
True

10 out of 10 arrays were succesfully sorted
=end