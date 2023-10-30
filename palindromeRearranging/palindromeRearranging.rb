def solution(input_string)
    char_count = {}  # Creamos un hash para contar la frecuencia de cada carácter
  
    # Contamos la frecuencia de cada carácter en la cadena
    input_string.each_char do |char|
      char_count[char] ||= 0
      char_count[char] += 1
    end
  
    # Contamos cuántos caracteres tienen frecuencia impar
    odd_count = char_count.values.count { |count| count.odd? }
  
    # Si hay como máximo un carácter con frecuencia impar, se puede reorganizar para formar un palíndromo
    return odd_count <= 1
  end
  