def merge_sort(array)
  if array.length == 1
    array
  end
  
  if array.length > 1
    a = array[0...(array.length/2)]
    b = array[(array.length/2)..-1]

    
    a = merge_sort(a)
    b = merge_sort(b)

    array = merge(a, b)
  end
  
  array
end

def merge(a, b)
  array = []
  while a.any? && b.any?
    if a[0] > b[0]
      array << b.shift
    else
      array << a.shift
    end
  end
  
  while a.any?
    array << a.shift
  end
  
  while b.any?
    array << b.shift
  end
  
  array
end

#examples
#puts merge([1,5],[2,3,8,9]).inspect
#puts merge_sort([11,10,9,8,5,2,1,4,3,6,7]).inspect
#puts merge_sort([9,2,1,8,10,3,4,5,11,6,7,12]).inspect
puts merge_sort([15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]).inspect