// Define the swap function
func swap(strings: inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = strings[firstIndex]
    strings[firstIndex] = strings[secondIndex]
    strings[secondIndex] = temp
}

// Define the Bubble Sort function
func bubbleSort(strings: inout [String]) {
    // Check if the array is already sorted
    var isSorted = true
    for index in 1..<strings.count {
        if strings[index] < strings[index - 1] {
            isSorted = false
            break
        }
    }

    // If the array is already sorted, return
    if isSorted {
        return
    }

    // Perform the bubble sort
    for outer in 0..<strings.count {
        for inner in 0..<strings.count - outer - 1 {
            if strings[inner] > strings[inner + 1] {
                swap(strings: &strings, firstIndex: inner, secondIndex: inner + 1)
            }
        }
    }
}

// Read the strings from STDIN
var strings = [String]()
while let line = readLine() {
    strings.append(line)
}

// Perform the bubble sort
bubbleSort(strings: &strings)

// Print the sorted strings
for string in strings {
    print(string)
}
