@n = 0

def merge_sort(arr, result = [])
  p arr
  return arr if arr.length < 2

  left_arr = merge_sort(arr.slice!(0..arr.length / 2 - 1), result)
  right_arr = merge_sort(arr, result)

  result = []

  result << (left_arr[0] <= right_arr[0] ? left_arr.shift : right_arr.shift) until left_arr.empty? || right_arr.empty?

  result + left_arr + right_arr
end

p merge_sort([7, 6, 5, 4, 3, 2, 1])
