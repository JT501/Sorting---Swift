/*
 Time: O(n㏒(n))
 Space: O(n)
 */

func mergesort(array: [Int]) -> [Int] {
    let length = array.count
    var array = array
    
    if length == 1 {
        return array
    }
    
    // Divide
    let mid = length / 2
    
    var left = Array(array[..<mid])
    var right = Array(array[mid...])
    
    left = mergesort(array: left)
    right = mergesort(array: right)
    
    // Conquer
    return merge(a: left, b: right)
}

func merge(a: [Int], b: [Int]) -> [Int] {
    var result = [Int]()
    var a = a, b = b
    
    while !a.isEmpty && !b.isEmpty {
        if a.first! <= b.first! {
            result.append(a.removeFirst())
        } else {
            result.append(b.removeFirst())
        }
    }
    
    result.append(contentsOf: a)
    result.append(contentsOf: b)
    
    return result
}

var array = [9, 4, 43, 122, 2, 12, 88, 1]

print(mergesort(array: array))
