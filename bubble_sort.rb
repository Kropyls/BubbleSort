#bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]
#My take on the bubble sort algorithm
#has flag to ensure that array is still being sorted
#and each n pass over array, it drops n indexes from the right to be sorted, because those are guaranteed to be sorted already

def bubble_sort(array)
  switch_counter = 1
  length = array.length
  while switch_counter > 0 do
    switch_counter = 0
    last_element = array[0]
    for i in 0...length
      if last_element > array[i]
        array[i - 1] = array[i]
        array[i] = last_element
        switch_counter+=1
      else
        last_element = array[i]
      end
    end
    length -= 1
  end
  return array
end

print(bubble_sort([4,3,78,2,0,2]))
