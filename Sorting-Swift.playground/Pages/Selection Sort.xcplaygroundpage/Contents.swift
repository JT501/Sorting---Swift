func selectionSort(array: [Int]) -> [Int] {
    var array = array
    let length = array.count
    
    guard length > 1 else {
        return array
    }
    
    for i in 0..<length {
        var smallest = i
        
        for j in i+1..<length {
            if array[j] < array[smallest] {
                smallest = j
            }
        }
        
        let temp = array[i]
        array[i] = array[smallest]
        array[smallest] = temp
    }
    
    return array
}

selectionSort(array: [8,3,2,7,7,9,1,11])
