## Esta solucion encuentra los saltos minimos que se tiene q dar para sobrepasar los obtaculos sin pisarlos

def solution(inputArray)
    input_sort= inputArray.sort
    input_length = inputArray.length
    larger_pivot = input_sort[-1] + 1
    minimum_pivot = input_sort[0] + 1
    minimum_length = larger_pivot
    

    for pivot in (minimum_pivot..larger_pivot - 2).to_a.reverse
        puts pivot
        pivot_collision = false
        pivot.step(pivot*input_length,pivot) do |i|
            if inputArray.include? i
                pivot_collision = true
                break
            end
        end
        minimum_length = pivot if !pivot_collision
    end
    
    minimum_length
end

## Esta solucion encuentra la disntancia minimna que se tiene que dar, para no pisar los obstasculos

def solution(inputArray)
    jump_length = 1
  
    while true
      clear_path = true
  
      # Check if there are obstacles at coordinates (0, jump_length, 2*jump_length, ...)
      current_coordinate = 0
      while current_coordinate <= inputArray.max
        if inputArray.include?(current_coordinate)
          clear_path = false
          break
        end
        current_coordinate += jump_length
      end
  
      # If a clear path is found, return the jump length
      return jump_length if clear_path
  
      # Otherwise, increase the jump length and continue checking
      jump_length += 1
    end
end

puts solution [1000, 999]

