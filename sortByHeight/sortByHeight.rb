def solution(a)
    orderly_persons_no_trees = a.filter{ |value| value.positive?  || value.zero?}.sort

    a.map.with_index {|value, index| value.negative? ? value : orderly_persons_no_trees.shift }
end

puts solution [-1, 150, 190, 170, -1, -1, 160, 180]
