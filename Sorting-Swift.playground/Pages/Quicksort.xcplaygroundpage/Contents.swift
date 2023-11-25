/*
 Time: O(n㏒(n))
 Space: O(㏒(n))
 */

func quicksort(array: inout [Int], leftIndex: Int, rightIndex: Int) {
    var pivotIndex: Int
    
    if array.count > 1 {
        // Divide
        pivotIndex = partition(array: &array, left: leftIndex, right: rightIndex)
        
        if leftIndex < pivotIndex - 1 {
            quicksort(array: &array, leftIndex: leftIndex, rightIndex: pivotIndex - 1)
        }
        
        if rightIndex > pivotIndex {
            quicksort(array: &array, leftIndex: pivotIndex, rightIndex: rightIndex)
        }
    }
}

func swap(array: inout [Int], index1: Int, index2: Int) {
    var temp: Int
    
    temp = array[index1]
    array[index1] = array[index2]
    array[index2] = temp
}

func partition(array: inout [Int], left: Int, right: Int) -> Int {
    var pivot = array[(left + right) / 2]
    var l = left
    var r = right
    
    // Conquer
    while l <= r {
        while array[l] < pivot {
            l += 1
        }
        
        while array[r] > pivot {
            r -= 1
        }
        
        if l <= r {
            swap(array: &array, index1: l, index2: r)
            l += 1
            r -= 1
        }
    }
    
    return l
}

var unsort = [19, 22, 63, 105, 2, 46]

quicksort(array: &unsort, leftIndex: 0, rightIndex: unsort.count - 1)
print(unsort)
