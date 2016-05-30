def merge_sort array
  if array.length > 1
    temp = array.each_slice((array.size/2.0).round).to_a
    
    # recursively splits up the array down to smallest multiples
    left = merge_sort(temp[0])
    right = merge_sort(temp[1])

    # result is equal to result of merging the split arrays
    array = merge(left,right)
  end
  array
end

# Helper argument that combines and sorts two arrays
def merge left, right
  result = []
  while not (left + right).empty?
    begin
      result << left.shift if left[0] <= right[0]
      result << right.shift if left[0] > right[0]
    rescue
      result << right.shift if left.empty? && !right.empty?
      result << left.shift if right.empty? && !left.empty?
    end
  end
  result
end