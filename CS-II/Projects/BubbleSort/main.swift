func swap(strings: inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = strings[firstIndex]
    strings[firstIndex] = strings[secondIndex]
    strings[secondIndex] = temp
}

func bubbleSort(strings: inout [String]) {
    //do I even need to check for sortment? seems redundant might increase times
    var isSorted = true
    for index in 1..<strings.count {
        if strings[index] < strings[index - 1] {
            isSorted = false
            break
        }
    }

    if isSorted {
        return
    }

    for outer in 0..<strings.count {
        for inner in 0..<strings.count - outer - 1 {
            if strings[inner] > strings[inner + 1] {
                swap(strings: &strings, firstIndex: inner, secondIndex: inner + 1)
            }
        }
    }
}

//stdin
var strings = [String]()
while let line = readLine() {
    strings.append(line)
}

bubbleSort(strings: &strings)
for string in strings {
    print(string)
}
