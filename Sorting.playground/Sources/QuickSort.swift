import Foundation

public class QuickSort {
    public init() { }
    
    public func quckSort(_ array: inout [Int]) {    
        quckSortLomuto(&array, low: 0, high: array.count - 1)
    }
    
    func quckSortLomuto(_ array: inout [Int], low: Int, high: Int) {    
        if low < high { 
            let pivotalIndex = lomutoPartitioning(&array, low: low, high: high) 
            quckSortLomuto(&array, low: low, high: pivotalIndex - 1)
            quckSortLomuto(&array, low: pivotalIndex + 1, high: high)
        }
    }
    
    func lomutoPartitioning(_ array: inout [Int], low: Int, high: Int) -> Int {
        let pivot = array[high]
        var currentIndex = low
        
        for i in low..<high {
            if array[i] <= pivot {
                array.swapAt(i, currentIndex)
                currentIndex += 1
            }
        }
        
        array.swapAt(currentIndex, high)
        return currentIndex
    }
}
