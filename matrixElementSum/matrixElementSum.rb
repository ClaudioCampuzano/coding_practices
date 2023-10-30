def solution(matrix)
    total_cost = matrix[0].sum
    ghost_alert = matrix[0].map{ |value| value == 0 ? true : false }

    matrix.drop(1).each do |row|
        index_row = 0
        total_cost += row.sum do |value|
                        index_row += 1
                        ghost_alert[index_row - 1] ? 0 : value
                      end
        ghost_alert = row.map.with_index { |value, index| value ==  0 ? true : ghost_alert[index] }
    end

    total_cost
end

puts solution([[0,1,1,2], 
[0,5,0,0], 
[2,0,3,3]])