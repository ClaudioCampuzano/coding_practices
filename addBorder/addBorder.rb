def solution(picture)
    border = '*'* (picture[0].length + 2)
    picture.map {|string| "*#{string}*"}.push(border).unshift(border)

end

puts solution ["abc","ded"]