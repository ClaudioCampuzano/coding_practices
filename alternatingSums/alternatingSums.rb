def solution(a)
    result = [0,0]

    a.map.with_index do |value, idx| 
        index = idx.even? ? 0 : 1
        result[index] += value
    end

    result
end


a = [50, 60, 60, 45, 70]
puts solution a 