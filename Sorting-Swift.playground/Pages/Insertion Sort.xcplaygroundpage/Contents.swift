/*
 Time: O(n²)
 Space: O(1)
 */

func insertionSort(array: [Int]) -> [Int] {
    var array = array
    let length = array.count

    guard length > 1 else {
        return array
    }

    for i in 1 ..< length {
        for j in (1 ... i).reversed() {
            if array[j] < array[j - 1] {
                let temp = array[j - 1]
                array[j - 1] = array[j]
                array[j] = temp
            }
            print(array)
        }
    }

    return array
}

insertionSort(array: [12, 4, 2, 2, 10, 7, 9, 13])
