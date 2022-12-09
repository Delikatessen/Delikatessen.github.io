import Foundation

//i will resent stdin forever sorry mr ben this is the correct way to do it in my eyes always and forever
let arguments = CommandLine.arguments
guard arguments.count > 1 else {
    exit(1)
}

let inputFile = arguments[1]
let input = try! String(contentsOfFile: inputFile, encoding: .utf8)
let inputArray = input.components(separatedBy: "\n")

var outputArray = inputArray
for i in 0..<outputArray.count {
    var minIndex = i
    for j in i+1..<outputArray.count {
        if outputArray[j] < outputArray[minIndex] {
            minIndex = j
        }
    }
    let temp = outputArray[i]
    outputArray[i] = outputArray[minIndex]
    outputArray[minIndex] = temp
}

print(outputArray.joined(separator: "\n"))
