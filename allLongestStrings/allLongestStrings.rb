def solution(inputArray)
    decreasing_array = inputArray.sort_by { |x| -x.length }

    decreasing_array.map { |value| value.length == decreasing_array[0].length && value}.select {|value| !!value}
end

puts solution ["enyky", "benyky", "yely", "varennyky", "varnnykyf"]
