//: Playground - noun: a place where people can play

import UIKit

//let sorter = MergeSort()
//let unsortedArray = [99, 17, 19, 100, -30, 29, 1, 9, 0, 1, -98]
//sorter.mergesort(unsortedArray)

let sorter1 = QuickSort()
var unsortedArray = [99, 17, 19, 100, -30, 29, 1, 9, 0, 1, -98]
sorter1.quckSort(&unsortedArray)
print(unsortedArray)
