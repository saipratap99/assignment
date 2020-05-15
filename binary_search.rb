def binary_search(array, num)
  low = 0
  high = array.length - 1

  while (low <= high)
    mid = low + ((high - low) / 2)

    if array[mid] == num
      return mid
    elsif array[mid] < num
      low = mid + 1
    else
      high = mid - 1
    end
  end

  return "#{num} not fount in array"
end

array = [4, 5, 58, 65]
num = 85
puts binary_search array, num
