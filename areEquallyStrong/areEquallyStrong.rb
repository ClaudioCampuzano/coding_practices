def solution(yourLeft, yourRight, friendsLeft, friendsRight)
    [yourLeft, yourRight].max == [friendsLeft, friendsRight].max && [yourLeft, yourRight].min == [friendsLeft, friendsRight].min
end
