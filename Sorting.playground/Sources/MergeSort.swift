import Foundation

public class MergeSort {
    public init() { }
    
    public func mergesort(_ array: [Int]) -> [Int] {
        let midIndex = array.count/2
        guard midIndex > 0 else { return array }
        
        let leftPart = mergesort(Array(array[0..<midIndex]))
        let rightPart = mergesort(Array(array[midIndex..<array.count]))
        
        return merge(leftPart, rightPart)
    }
    
    private func merge(_ leftArray: [Int], _ rightArray: [Int]) -> [Int] {
        var lIndex = 0
        var rIndex = 0
        var result = [Int]()
        
        while lIndex < leftArray.count && rIndex < rightArray.count {
            let left = leftArray[lIndex]  
            let right = rightArray[rIndex]
            
            if left > right {
                result.append(right)
                rIndex += 1
            } else if right > left {
                result.append(left)
                lIndex += 1
            } else {
                result.append(right)
                rIndex += 1
                result.append(left)
                lIndex += 1
            }
        }
        
        while lIndex < leftArray.count {
            result.append(leftArray[lIndex])
            lIndex += 1
        }
        
        while rIndex < rightArray.count {
            result.append(rightArray[rIndex])
            rIndex += 1
        }
        
        return result
    }
} 
