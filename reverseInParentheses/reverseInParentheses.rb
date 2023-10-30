def solution(inputString)
    # open_parentesis = false
    # another_parentesis = false
    # another_acummulator = []
    # accumulator = []
    # formatted = ''

    # inputString.each_char do |ch|

    #     if ch == '('
    #         another_parentesis = true if open_parentesis
    #         open_parentesis = true
    #         next
    #     end

    #     if ch == ')'
    #         if another_parentesis
    #             another_parentesis = false
    #             accumulator << another_acummulator.reverse
    #             another_acummulator = []
    #             next
    #         end

    #         if open_parentesis
    #             open_parentesis = false
    #             formatted << accumulator.join('').reverse
    #             accumulator = []
    #             next
    #         end
    #     end

    #     another_acummulator << ch if another_parentesis
    #     accumulator << ch if open_parentesis && !another_parentesis
    #     formatted << ch if !open_parentesis

    # end

    # formatted

    stack = []
    result = ""

    inputString.each_char do |char|
        if char == '('
            stack.push(result)
            result = ""
        elsif char == ')'
            result = stack.pop + result.reverse
        else
            result += char
        end
    end

    result

end

puts solution("(odnum(hola(jiro)))basura")