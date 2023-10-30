def solution(inputArray)
    stack_movements = []

    inputArray.each.with_index do |value, index|
        previous_index = index - 1
        if index == 0 || value > inputArray[previous_index] + stack_movements[previous_index]
            stack_movements << 0
            next
        end

        stack_movements << inputArray[previous_index] + stack_movements[previous_index]  - value + 1
    end

    stack_movements.sum
end

puts solution [2, 1, 10, 1]