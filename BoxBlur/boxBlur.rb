def solution(image)
    blur_image = []
    for i in 0..(image.length - 1)
        for j in 0..(image[i].length - 1)
            next if ([i,j] & [0]).any? || i == image.length - 1 || j == image[i].length - 1

            prom = ((image[i-1][j-1]+image[i-1][j]+image[i-1][j+1]+image[i][j-1]+
                    image[i][j]+image[i][j+1]+image[i+1][j-1]+
                    image[i+1][j]+image[i+1][j+1])/9.0).floor

            blur_image[i-1] = [] unless blur_image[i-1].is_a?(Array)
            blur_image[i-1] << prom

        end
    end
    blur_image
end

image =  [[36,0,18,9],
[27,54,9,0],
[81,63,72,45]]

puts solution image

