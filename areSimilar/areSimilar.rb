

def solution(a, b)
    return false if a.length != b.length
  
    diff_count = 0
    diff_indices = []
  
    a.each_with_index do |element, index|
      if a[index] != b[index]
        diff_count += 1
        diff_indices << index
      end
      
      return false if diff_count > 2
    end
  
    return diff_count == 0 || (diff_count == 2 && a[diff_indices[0]] == b[diff_indices[1]] && a[diff_indices[1]] == b[diff_indices[0]])
  end

puts solution [1, 2, 1, 2], [2, 2, 1, 1]
