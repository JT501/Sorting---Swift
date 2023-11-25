func bubbleSort(array: [Int]) -> [Int] {
    var array = array
    let length = array.count

    guard length > 1 else { return array }

    for i in 0 ..< length {
        for j in 1 ..< (length - i) {
            if array[j] < array[j - 1] {
                let temp = array[j]
                array[j] = array[j - 1]
                array[j - 1] = temp
            }
        }
    }

    return array
}

bubbleSort(array: [3, 1, 4, 4, 8, 9])
