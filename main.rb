require 'pry-byebug'

def merge_sort(arr)
  sorted = []
  if arr.length < 2
    sorted << arr[0]
  else
    arr1 = arr.slice!(0, arr.length / 2)
    left = merge_sort(arr1)
    right = merge_sort(arr)
    counter = left.length + right.length
    counter.times do
      if left.length.zero? || right.length.zero?
        sorted += right + left
        break
      end
      if left[0] < right[0]
        sorted << left.shift(1)[0]
      else
        sorted << right.shift(1)[0]
      end
    end
  end
  sorted
end

arr = Array.new(rand(20)) { rand(1...100) }
p arr
p merge_sort(arr)
