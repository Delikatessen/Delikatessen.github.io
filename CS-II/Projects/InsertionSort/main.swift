import Foundation

//get the input file, STDIN is so confusing
let arguments = CommandLine.arguments
guard arguments.count > 1 else {
    exit(1)
}

let inputFile = arguments[1]
let input = try! String(contentsOfFile: inputFile, encoding: .utf8)
let inputArray = input.components(separatedBy: "\n")

//output stuff
var outputArray = inputArray
for i in 1..<outputArray.count {
    let currentElement = outputArray[i]
    var j = i
    while j > 0 && outputArray[j-1] > currentElement {
        outputArray[j] = outputArray[j-1]
        j -= 1
    }
    outputArray[j] = currentElement
}

//print owa owa
print(outputArray.joined(separator: "\n"))
