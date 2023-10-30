def solution(inputArray)
    stack = []
    for i in 0..inputArray.length-2
        stack << (inputArray[i].to_i - inputArray[i+1].to_i).abs
    end
    stack.max
end


puts solution [2, 4, 1, 0]