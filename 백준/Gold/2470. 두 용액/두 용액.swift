let n = Int(readLine()!)!
var soluteArr = readLine()!.split(separator: " ").map{ Int($0)! }.sorted(by: <)

var answer = [0, 0]
var sum = Int.max

var start = 0
var end = n - 1

while start < end {
    let total = soluteArr[start] + soluteArr[end]
    
    if abs(total) < sum {
        sum = abs(total)
        answer[0] = soluteArr[start]
        answer[1] = soluteArr[end]
    }
    
    if total < 0 {
        start += 1
    } else {
        end -= 1
    }
}

print(answer[0], answer[1])