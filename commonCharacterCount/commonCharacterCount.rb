def solution(s1, s2)
    common = 0
    set_s1 = histogram_values(s1)
    set_s2 = histogram_values(s2)

    set_s1.each_pair do |key_s1, value_s1|
        if set_s2.has_key? key_s1
            common += [value_s1, set_s2[key_s1] ].min
        end
    end
    
    common
end

def histogram_values(string)
    string.each_char.with_object(Hash.new(0)) { |ch, hash| hash[ch] += 1 }
end

puts solution "aabcc", "adca"