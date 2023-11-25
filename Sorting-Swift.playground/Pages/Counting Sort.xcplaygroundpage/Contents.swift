/*
 Time: O(n + k) where k is range of the array
 Space: O(n + k)
 */

func countingSort(array: [Int], min: Int, max: Int) -> [Int] {
    var array = array
    var length = max - min
    var counting = [Int](repeating: 0, count: length + 1)

    for item in array {
        counting[item - min] += 1
    }

    var j = 0
    for i in min ... max {
        while counting[i - min] > 0 {
            array[j] = i
            counting[i - min] -= 1
            j += 1
        }
    }

    return array
}

countingSort(array: [9, 8, 1, 4, 5, 3, 2, 2, 7, 0, -1, -10, -11], min: -11, max: 9)
