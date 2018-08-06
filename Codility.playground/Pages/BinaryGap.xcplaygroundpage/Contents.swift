//: Playground - noun: a place where people can play



public func solution(_ N : Int) -> Int {
    var binaryGap = 0
    var longestBinaryGap = 0
    let binary = String(N, radix: 2)
    for char in binary {
        if char == "1" {
            if binaryGap > longestBinaryGap {
                longestBinaryGap = binaryGap
            }
            binaryGap = 0

        } else if char == "0" {
            binaryGap += 1
        }
    }
    return longestBinaryGap
}

print(solution(208883333))
