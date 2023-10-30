def solution(inputString)
    input_array = inputString.split('.')
    return false if input_array.length != 4

    input_array.each do |value|
        integer_value = Integer(value) rescue false

        return false if !integer_value
        return false if value.length != integer_value.to_s.length
        return false if !integer_value.between?(0,255)
    end
    
    true
end


puts solution "01.23.255.255"
