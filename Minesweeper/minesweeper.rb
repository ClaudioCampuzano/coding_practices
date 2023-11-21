def solution(matrix)
    mines = []
    for i in 0..(matrix.length - 1)
        for j in 0..(matrix[i].length - 1)
            fil_inf = i-1 < 0 ? 0 : i-1 
            col_inf = j-1 < 0 ? 0 : j-1
            fil_sup = i+1 > matrix.length - 1 ? matrix.length - 1 : i+1 
            col_sup = j+1 > matrix[i].length - 1 ? matrix[i].length : j+1

            
            sum = matrix[fil_inf][col_inf]+matrix[fil_inf][j]+matrix[fil_inf][col_sup]+matrix[i][col_inf]+
                   matrix[i][col_sup]+matrix[fil_sup][col_inf]+matrix[fil_sup][j]+matrix[fil_sup][col_sup]

            mines[i] = [] unless mines[i].is_a?(Array)
            mines[i] << sum
        end
    end
    mines
end

matrix = [[1, 0, 0],[0, 1, 0],[0, 0, 0]]

puts solution matrix