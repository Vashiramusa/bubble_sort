# frozen_string_literal: true

def bubble_sort(arr)
  loop do
    swap = false
    (arr.length - 1).times do |i|
      temp = arr[i]
      next unless arr[i] > arr[i + 1]

      swap = true
      arr[i] = arr[i + 1]
      arr[i + 1] = temp
    end
    break unless swap
  end
  arr
end

array = []
(1..10_000).each do |x|
  array.push(x)
end
array.reverse!

puts bubble_sort(array)
