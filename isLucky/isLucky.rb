def solution(n)
    str = n.to_s
    length_half = str.length/2

    str[0, length_half].sum == str[length_half, length_half*2].sum
end

puts solution 1230
