# frozen_string_literal: true

def bubble_sort(arr)
  iterations = 0
  loop do
    swap = false
    (arr.length - 1 - iterations).times do |i|
      next unless arr[i] > arr[i + 1]

      temp = arr[i]
      swap = true
      arr[i] = arr[i + 1]
      arr[i + 1] = temp
    end
    break unless swap

    iterations += 1
  end
  arr
end

# Uncomment to test the method
# bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def bubble_sort_by(arr)
  iterations = 0
  loop do
    swap = false
    (arr.length - 1 - iterations).times do |i|
      value = yield(arr[i], arr[i + 1])
      next unless value.positive?

      temp = arr[i]
      swap = true
      arr[i] = arr[i + 1]
      arr[i + 1] = temp
    end
    break unless swap

    iterations += 1
  end
  arr
end

# Uncomment to test the method
# bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length }
#  => ["hi", "hey", "hello"]
